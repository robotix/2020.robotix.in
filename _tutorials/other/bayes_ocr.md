---
layout: post
title: "Normal Bayes Classifier"
categories:
  - other
---

#### Normal Bayes Classifier (OCR Example)

##### Understanding Normal Bayes Classifier

A Normal Bayes Classifier is also known as the Naive Bayes Classifier.
According to [wikipedia](http://en.wikipedia.org/wiki/Naive_Bayes_classifier),
A naive Bayes classifier is a term in Bayesian statistics dealing with a
simple probabilistic classifier based on applying Bayes' theorem with strong
(naive) independence assumptions. A more descriptive term for the underlying
probability model would be "independent feature model". 

In simple terms, a naive Bayes classifier assumes that the presence (or
absence) of a particular feature of a class is unrelated to the presence (or
absence) of any other feature. For example, a fruit may be considered to be
an apple if it is red, round, and about 4" in diameter. Even though these
features depend on the existence of the other features, a naive Bayes
classifier considers all of these properties to independently contribute to
the probability that this fruit is an apple. 

Depending on the precise nature of the probability model, naive Bayes
classifiers can be trained very efficiently in a supervised learning
setting. In many practical applications, parameter estimation for naive
Bayes models uses the method of maximum likelihood; in other words, one can
work with the naive Bayes model without believing in Bayesian probability
or using any Bayesian methods. 

In spite of their naive design and apparently over-simplified assumptions,
naive Bayes classifiers often work much better in many complex real-world
situations than one might expect. Recently, careful analysis of the Bayesian
classification problem has shown that there are some theoretical reasons
for the apparently unreasonable efficacy of naive Bayes classifiers. An
advantage of the naive Bayes classifier is that it requires a small amount
of training data to estimate the parameters (means and variances of the
variables) necessary for classification. Because independent variables are
assumed, only the variances of the variables for each class need to be
determined and not the entire covariance matrix.

##### Handwritten Digit OCR

Now that we have a fairly good idea about Normal Bayes Classifier, we will
implement an OCR for handwritten digits. We will be provided with two
datasets (training and testing). A 32x32 bitmap image of each digit is
compressed to 8x8 and then it is flattened to a row vector containing 64
features. At the end of each line in the training dataset is an integer
whose range is from 0-9, which is the label corresponding to the digit in
the image. The testing dataset is similar to the training dataset but it
is unlabeled. The datasets which are used in this example is available
[here](http://archive.ics.uci.edu/ml/machine-learning-databases/optdigits/).

###### C++ Implementation

First we include all the necessary header files and set some constants. Our
dataset contains 3823 training examples and 1797 test examples.

{% highlight cpp %}
#include <iostream>
#include <stdio.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/ml/ml.hpp>

using namespace std;
using namespace cv;

const int TRAINING_EXAMPLES = 3823;
const int TEST_EXAMPLES = 1797;
const int NUM_FEATURES = 64;
{% endhighlight %}

Now we need to load the data to our program. The training data is stored in a file called `optdigits.tra` and the test data is store in `optdigits.tes`. We will not use file IO in this example but instead we will pipe the input files while calling the executable. So here is the code for reading the datasets. We will create the four necessary `Mat` variables; `trainingData`, `trainingClasses`, `testData`, `testClasses` and load all the data into these variables.

{% highlight cpp %}
float feature, cls;
Mat trainingData(TRAINING_EXAMPLES, NUM_FEATURES, DataType<float>::type);
Mat trainingClasses(TRAINING_EXAMPLES, 1, DataType<float>::type);
Mat testData(TEST_EXAMPLES, NUM_FEATURES, DataType<float>::type);
Mat testClasses(TEST_EXAMPLES, 1, DataType<float>::type);

for (int i = 0; i < TRAINING_EXAMPLES; i++) {
	for (int j = 0; j < NUM_FEATURES; j++) {
		scanf("%f,", &feature);
		trainingData.at<float>(i, j) = feature;
	}
	cin >> cls;
	trainingClasses.at<float>(i, 0) = cls;
}
for (int i = 0; i < TEST_EXAMPLES; i++) {
	for (int j = 0; j < NUM_FEATURES; j++) {
		scanf("%f,", &feature);
		testData.at<float>(i, j) = feature;
	}
	cin >> cls;
	testClasses.at<float>(i, 0) = cls;
}
{% endhighlight %}

Now that our data is loaded we will train the classifier. We will create a
separate function for this and call it `bayes` and make use of the class
`CvNormalBayesClassifier` and its `train` method. This function will create
a new `Mat` variable called `predicted` and in it store the predicted
labels of the test dataset. Here is the function.

{% highlight cpp %}
void bayes(Mat& trainingData, Mat& trainingClasses, Mat& testData, Mat& testClasses) {
    CvNormalBayesClassifier bayes(trainingData, trainingClasses);
    Mat predicted(testClasses.rows, 1, DataType<float>::type);
    for (int i = 0; i < testData.rows; i++) {
        const Mat sample = testData.row(i);
        predicted.at<float>(i, 0) = bayes.predict(sample);
    }
}
{% endhighlight %}

Now that we have trained and predicted from the respective datasets, we need
an evaluation metric to determine how good the classifier performed. For
this we will create another function to check the accuracy. We will keep a
count of how many times we predicted the data correctly and then we will
return this count divided by the number of test examples to get the accuracy.

{% highlight cpp %}
float evaluate(Mat& predicted, Mat& actual) {
    int t = 0;
    for(int i = 0; i < actual.rows; i++) {
        float p = predicted.at<float>(i,0);
        float a = actual.at<float>(i,0);
        if (p == a) t++;
    }
    return t / (float)actual.rows;
}
{% endhighlight %}

That is pretty much it. Here is complete code.

{% highlight cpp %}
#include <iostream>
#include <stdio.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/ml/ml.hpp>

using namespace std;
using namespace cv;

const int TRAINING_EXAMPLES = 3823;
const int TEST_EXAMPLES = 1797;
const int NUM_FEATURES = 64;

float evaluate(Mat& predicted, Mat& actual) {
    int t = 0;
    for(int i = 0; i < actual.rows; i++) {
        float p = predicted.at<float>(i,0);
        float a = actual.at<float>(i,0);
        if (p == a) t++;
    }
    return t / (float)actual.rows;
}

void bayes(Mat& trainingData, Mat& trainingClasses, Mat& testData, Mat& testClasses) {
    CvNormalBayesClassifier bayes(trainingData, trainingClasses);
    Mat predicted(testClasses.rows, 1, DataType<float>::type);
    for (int i = 0; i < testData.rows; i++) {
        const Mat sample = testData.row(i);
        predicted.at<float>(i, 0) = bayes.predict(sample);
    }
    cout << "Accuracy = " << evaluate(predicted, testClasses) << endl;
}

int main(int argc, char const *argv[])
{
	float feature, cls;
	Mat trainingData(TRAINING_EXAMPLES, NUM_FEATURES, DataType<float>::type);
	Mat trainingClasses(TRAINING_EXAMPLES, 1, DataType<float>::type);
	Mat testData(TEST_EXAMPLES, NUM_FEATURES, DataType<float>::type);
	Mat testClasses(TEST_EXAMPLES, 1, DataType<float>::type);

	for (int i = 0; i < TRAINING_EXAMPLES; i++) {
		for (int j = 0; j < NUM_FEATURES; j++) {
			scanf("%f,", &feature);
			trainingData.at<float>(i, j) = feature;
		}
		cin >> cls;
		trainingClasses.at<float>(i, 0) = cls;
	}
	for (int i = 0; i < TEST_EXAMPLES; i++) {
		for (int j = 0; j < NUM_FEATURES; j++) {
			scanf("%f,", &feature);
			testData.at<float>(i, j) = feature;
		}
		cin >> cls;
		testClasses.at<float>(i, 0) = cls;
	}

	bayes(trainingData, trainingClasses, testData, testClasses);
	return 0;
}
{% endhighlight %}

After compiling the above program an executable called `bayes` was created.
For supplying the input files in order, we should run the executable like this:

	./bayes < optdigits.tra < optdigits.tes 

If you run the program using the datasets mentioned above, you should get an
accuracy of **0.847524** which is good for such a highly optimized and small
dataset. The accuracy can be increased using more training data and higher
number of features.

##### Program output:

	Accuracy = 0.847524
