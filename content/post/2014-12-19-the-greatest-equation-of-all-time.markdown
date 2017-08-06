---
author: nrwoodward
comments: true
date: 2014-12-19 20:43:00+00:00
layout: post
link: https://nrwoodward.wordpress.com/2014/12/19/the-greatest-equation-of-all-time/
slug: the-greatest-equation-of-all-time
title: '"The Greatest Equation of All Time"'
wordpress_id: 28
---

Sorry to have been so long away from the blog! The purpose of this post is to give some intuition for Euler's identity, "the most beautiful theorem in mathematics", to those who haven't seen it before or to those for whom it is meaningless because they lack the mathematical background.  
  
It was never introduced to me in any class, and unless you majored in math or physics the same is probably true for you. I wanted not only to call your attention to this equation, but also to derive it, the derivation of which is equally marvellous. Walking through the derivation with a pencil was perhaps my first real taste of what I imagine mathematicians live and breathe for; my present aim is to give you a taste!   
  
Here it is:  


[![](http://mathurl.com/m9kp87b.png)](http://mathurl.com/m9kp87b.png)

  
It's pretty astounding when you look at it for the first time... it seems a ridiculous assertion! (However, [Gauss](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss) is supposed to have said that if  this was not immediately apparent to you on being told it, you would  never be a first-class mathematician.) He also had a [really cool signature](https://twitter.com/NathanielRaley/status/476851163917086720), so he is probably right.  
  
Really though? Are we talking about_ e _(2.71828...), like from continuously compounded interest? You mean _π _(3.14159...), like a circle's circumference-to-radius ratio? And the imaginary number _i_, the square root of -1, that we talked about for like a week in high school and then never actually used for anything? Yep, those are the ones, _e_, _π, _and_ i_. Dust off your old TI-8x, punch this badboy in, and see what output you get. The batteries are probably dead so I'll spare you the trouble:  
  


[![](https://nrwoodward.files.wordpress.com/2014/12/1fac1-eulers-bmp.jpg)](https://nrwoodward.files.wordpress.com/2014/12/1fac1-eulers-bmp.jpg)

  
Though I am mainly interested in showing you a way to get to this shocking identity, I will need thereby to talk a bit about [Taylor series](https://en.wikipedia.org/wiki/Taylor_series) approximations. If you don't know much about this technique, think of using a sum of polynomials to approximate the shape of function at a given point. If you don't know much about polynomials and functions, think of adding together easy-to-compute things (_x, x2, x3,_ ...) to approximate hard-to-compute things (_ex, sin(x), ln(x),_ ...). This is actually how your calculator computes with things like _e_, _π, _et al.   
  
But this isn't a post about Taylor series approximations, so I'll cut down on the details. If you already understand how to use Taylor series approximations, you could [skip to the derivation](https://www.blogger.com/blogger.g?blogID=5101073883978186322#main1). If you aren't, it is super useful and cool, so check it out! First things first: if you want to approximate the shape of a function _f(x) _using an easier-to-work-with polynomial like a power series (i.e., _a + bx + cx2 + dx3_ ... where a, b, c, d,... are constants), you can do it like this:  
  
  


[![](http://mathurl.com/qdvnje8.png)](http://mathurl.com/qdvnje8.png)

  
where _f(n)(0)_ represents the nth derivative of function _f(x)_, evaluated at x=0 (this gives us the shape around x=0) Technically, this is a Maclaurin series. Really cool! Because if we can keep taking derivatives, we can get an almost perfect approximation of_ f(x) _using polynomials instead. Don't worry, I'm not going to ask you to do any calculus (though you might want a helpful [refresher on derivatives](https://www.blogger.com/blogger.g?blogID=5101073883978186322#deriv)*). I'll just show you the results.   
  
To follow the derivation, you just need the following 3 results: the derivative of _sin(x)_ is _cos(x)_, the derivative of _cos(x)_ is _-sin(x)_, and the derivative of _ex_ is itself, just _ex_.   
  
Let's do _sin(x)_ first, because I've got some pretty pictures of it!  
  
  


[![](https://nrwoodward.files.wordpress.com/2014/12/8829e-sin1-bmp.jpg)](https://nrwoodward.files.wordpress.com/2014/12/8829e-sin1-bmp.jpg)

  
We want to approximate this function using a Taylor series polynomial. Let us do so by taking the first term of that big equation above:  
  


[![](http://mathurl.com/qhry9wm.png)](http://mathurl.com/qhry9wm.png)

  
  


So using only 1 term, our approximation is the line y=x  
  


[![](https://nrwoodward.files.wordpress.com/2014/12/5b340-sin2-bmp.jpg)](https://nrwoodward.files.wordpress.com/2014/12/5b340-sin2-bmp.jpg)

  
Not a very satisfying approximation, is it? What about 2 terms?  
  
  


[![](http://mathurl.com/npqtl28.png)](http://mathurl.com/npqtl28.png)

  


If we plot x - x3/3!, we get  
  


[![](https://nrwoodward.files.wordpress.com/2014/12/e6b5f-sin3-bmp.jpg)](https://nrwoodward.files.wordpress.com/2014/12/e6b5f-sin3-bmp.jpg)

  
Hey wow, that's a lot better! The polynomial x - x3/3! seems to pretty exactly mimic _sin(x)_, at least around x=0. Let's add another term.  
  


[![](http://mathurl.com/pysq8a4.png)](http://mathurl.com/pysq8a4.png)

  
Now our approximation is y = x - x3/3! + x5/5! which looks like this:  
  


[![](https://nrwoodward.files.wordpress.com/2014/12/903b0-sin4-bmp.jpg)](https://nrwoodward.files.wordpress.com/2014/12/903b0-sin4-bmp.jpg)

  
Even better! You can see that by adding more terms of the Taylor polynomial, we get a closer approximation of the original function. Here's a couple more terms just to illustrate:  
  


[![](http://mathurl.com/ll5kobw.png)](http://mathurl.com/ll5kobw.png)

[  
![](https://nrwoodward.files.wordpress.com/2014/12/f4376-sin5-bmp.jpg)](https://nrwoodward.files.wordpress.com/2014/12/f4376-sin5-bmp.jpg)

  
Now the polynomial approximation is virtually indistinguishable from _sin(x)_, at least at from x=-pi to x=pi. Here's a more "moving" display of this ([credit](http://mathforum.org/mathimages/index.php/Taylor_Series)). Notice how adding more and more terms gets us an ever-better approximation of _sin(x)_.  
  


[![](https://nrwoodward.files.wordpress.com/2014/12/3c2df-taylorsin.gif)](https://nrwoodward.files.wordpress.com/2014/12/3c2df-taylorsin.gif)

  
  
Here's an even easier example! (We are going to need this result too.)  
  


[![](http://mathurl.com/k837vkd.png)](http://mathurl.com/k837vkd.png)

  
  
So we have Taylor series approximations for _sin(x)_ and for _ex_. Now all we need is one for _cos(x)_. It is just like sin(x) except all of the _opposite_ terms cancel out! I'll leave this as an exercise to the reader (always wanted to say that!) and just give you the result:  
  


[![](http://mathurl.com/olv67tg.png)](http://mathurl.com/olv67tg.png)

  
Take a minute to look at these. Strange, isn't it? If it weren't for those negative signs, it looks like simply adding sin(x) and cos(x) would give us ex... Hmmm.  
  
We are now in a position to make some magic happen, but one more thing remains to be done. Now's the time to recall your imaginary number _i, _which is_ _equal to √−1. Since_ i_ = √−1, we know _i_2 = -1. For higher powers of _i, _we have the following pattern:  
  


[![](http://mathurl.com/oq6xvb4.png)](http://mathurl.com/oq6xvb4.png)

  
The pattern i, -1, -i, 1, repeats as you take ever higher powers of i. Notice that the signs are switching too! You should be excited about this. Now we're ready for the main event!  
  
[](https://www.blogger.com/null)[![](http://mathurl.com/mc3y8l3.png)](http://mathurl.com/mc3y8l3.png)  
  
YEAH! WOOHOO! At least, that's how I felt when I first saw it.  
  
And it's not just superficially beautiful either. Before we plugged in pi, we saw that eix=cos(x) + i*sin(x). This formula has many important applications, including being crucial to [Fourier analysis](https://en.wikipedia.org/wiki/Fourier_series). For an excellent introduction, check [this out](http://betterexplained.com/articles/an-interactive-guide-to-the-fourier-transform/).  
  
Well, I hope that if the derivation didn't leave you reeling in perfect wonderment, you were at least given something to think about! Thanks for reading!  
________________________________________________________________  
[](https://www.blogger.com/null)***Quick derivatives refresher**  
It may be helpful to think of the derivative of a function f(x)---symbolized as d/dx f(x) or f'(x)---as a machine that gives of the slopes of tangent lines anywhere along the original function: if you plug x=3 into f'(x), what you get out is the slope of a line tangent to the original function f(x) at x=3. Since slope is just rise-over-run, the rate at which a function is increasing or decreasing, the derivative gives as the rate at which the original function is increasing or decreasing at a single point. If f(x) is the parabola x2, then its derivative f'(x) is 2x. At x=0, the very bottom of the parabola, we get f'(0)=2(0)=0, which tells us the line tangent to x2 at the point x=0 has zero slope (it's just a horizontal line). At x=1, the parabola has started to increase; the rate it is increasing at that point (the slope of the line tangent to that point) is f'(1)=2(1)=2; so now we have a line that goes up 2 for every 1 it goes over. At f'(2)=2(2)=4, a line that goes up 4 for every 1 it goes over. This agrees with our intuition when we look at a parabola; it is accelerating upward at an ever increasing rate.  
  
[](https://en.wikipedia.org/wiki/Euler%27s_identity#cite_note-10)
