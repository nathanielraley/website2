---
author: nrwoodward
comments: true
date: 2014-06-17 04:46:00+00:00
layout: post
link: https://nrwoodward.wordpress.com/2014/06/17/miles-and-miles/
slug: miles-and-miles
title: Miles and Miles!
wordpress_id: 46
---

This post considers the mile. You know, the unit of distance. 5,280 feet... 1,760 yards... 8 furlongs of 660 feet a piece... Have you ever thought about how nicely divisible our mile is? I have two principal goals in writing this post; they are, in ascending order of importance, (1) to talk about the history of the mile, and (2) to demonstrate an effective algorithm for finding all the factors of a number.   
  


[![](https://nrwoodward.files.wordpress.com/2014/06/25101-map-scale.gif)](https://nrwoodward.files.wordpress.com/2014/06/25101-map-scale.gif)

  
The USA's ubiquitous distance measure dates back to 1593, during the reign of Queen Elizabeth I, where it was formalized by an English Act of Parliament.  
Sure, there were things called "miles" before then: the term originates from the Latin word _millia_, meaning "thousand", and has cognates in many languages (e.g., Ger. _meile_, Dut. _mijl_, Old Eng./Swed./Nor. _mil_, Rus. _milha..._). This rich provenance comes from the fact that the Roman Empire used a unit of measured called the _mille passuum_, Latin for "one thousand paces", which was equivalent to about 4851 modern feet.   
  
Hilariously, the USA changed the definition of the yard in 1893 with the [Mendenhall Order](https://en.wikipedia.org/wiki/Mendenhall_Order) to be based on metric standards instead of the customary English measurements. In 1834, when the UK Houses of Parliament were destroyed in a fire, the official "yard" and "pound" were torched withal and the new copies made to replace them were unstable and kept changing sizes. Around the same time the [International Bureau of Weights and Measures](https://en.wikipedia.org/wiki/International_Bureau_of_Weights_and_Measures) was established in France, recommending the highly stable and less arbitrary meter- and kilogram- standards. So in 1866, Congress passed a law which allowed (but did not require) the use of the metric system. Unfortunately, the definition of a yard was also changed, so that 1 yard = 3600/3937 (0.9144018288) meters, a change which differs from the international standard of 1 yard = 0.9144 meters by about 3.2 millimeters per mile. This may not sound like much---one international mile (1,609.344 km) is exactly 0.999998 of a US mile (1,609.347219 km)---but the accumulated differences can be significant.  
  
Anyway, enough of that. Let's factor 5280. Remember factor trees?  
  
  5280  
    /  \  
  **3**   1760  
        /  \  
       **2**  880  
            /  \  
           **2**  440  
                /  \  
               **2**   220  
                     /  \  
                    **2**   110  
                          /  \  
                         **2**  55  
                             /  \  
                            **5**  **11**  
  
Clearly a mile can be evenly split into **halves, thirds, fourths, fifths, sixths, eighths, tenths, elevenths, twentieths**...  
  
**To find **_**ALL of the factors of a number** _systematically, we write the prime factorization (the bolded factors above) using exponents:  
**3**1 x **2**5 x **5**1 x **11**1  
  
To find the total number of factors,** just** **add one to each exponent and multiply them together**. Thus, 5280 has (1+1)(5+1)(1+1)(1+1)=(2)(6)(2)(2)=48 factors!  
  
To find out all 48 distinct factors, we have to **find all unique combinations of the above prime factors**: we will have all the prime factors (#1, below), all the products of two primes (#2, 4C2+1), all the products of three primes (#3), all products of four primes (#4), all products of five primes (#5), all products of six primes (#6), all products of seven primes (#7) and only one product of eight primes (#8), 2x2x2x2x2x3x5x11=5280.  
  
#1:  
**      **=** 3, 2, 5, 11**  
#2:    22, (2x3), (2x5), (2x11), (3x5), (3x11), (5x11)  
       = **4, 6, 10, 22, 15, 33, 55 **  
#3:    23, (22x3), (22x5), (22x11), (2x3x5), (2x3x11), (2x5x11), (3x5x11)  
       = **8, 12, 20, 44, 30, 66, 110, 165**  
#4:    24, (23x3), (23x5), (23x11), (22x3x5), (22x3x11), (22x5x11), (2x3x5x11)  
       = **16, 24, 40, 88, 60, 132, 220, 330**  
#5:    25, (24x3), (24x5), (24x11), (23x3x5), (23x3x11), (23x5x11), (22x3x5x11)  
       = **32, 48, 80, 176, 120, 264, 440, 660**  
#6:    (25x3), (25x5), (25x11), (24x3x5), (24x3x11), (24x5x11), (23x3x5x11)  
       = **96, 160, 352, 240, 528, 880, 1320**  
#7:    (25x3x5), (25x3x11), (25x5x11), (24x3x5x11)  
       = **480, 1056, 1760, 2640**  
#8:    (25x3x5x11)  
       = **5280 **  
 ...and don't forget **1**!   
  
But in choosing the mile to have 5280 feet, it turns out we could've done better! In 1915, the mathematician [Ramanujan](https://en.wikipedia.org/wiki/Ramanujan) formalized the concept of a [highly composite number ](https://en.wikipedia.org/wiki/Highly_composite_number)(HCN) as _a positive integer with more divisors than any smaller positive integer._ For example, if we had defined a mile to consist of [5,040](https://en.wikipedia.org/wiki/5040_%28number%29) feet (a HCN), we would have 60 factors with 240 fewer feet. We would lose divisibility by 11, but we would gain divisibility by multiples of 7 and 9, perhaps more a more useful quality. Also, 5040 is a [factorial](https://en.wikipedia.org/wiki/Factorial) (7! = 7x6x5x4x3x2x1 = 5040), equal to 10C4 (10x9x8x7=5040) , a [superior highly composite number](https://en.wikipedia.org/wiki/Superior_highly_composite_number), and a [colossally abundant number](https://en.wikipedia.org/wiki/Colossally_abundant_number). The number 2,520 (it too has 48 factors) would've been a good choice as well. In fact, it is the smallest number divisible by all of the numbers 1-12 not including 11. Unfortunately, the smallest number that is divisible by all numbers 1-12 including 11 is 11x2520=27,750... not a very practical number for measurement purposes.  
  
So, all told, the mile is pretty good! It's divisible by 48 different numbers and it has some quirky history. 5040 is a much cooler number, but oh well: the USA should be adopting the metric system soon. In fact, according to the CIA Factbook, the US is [one of only three countries that has not adopted the metric system](https://www.cia.gov/library/publications/the-world-factbook/appendix/appendix-g.html) as their official  system of weights and measures ([Burma](https://en.wikipedia.org/wiki/Burma) and [Liberia](https://en.wikipedia.org/wiki/Liberia) are the other two).  
  
[](https://en.wikipedia.org/wiki/Metric_system_in_the_United_States#cite_note-World_Factbook-1)  
  
 
