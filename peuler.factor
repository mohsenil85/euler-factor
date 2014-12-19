! Copyright (C) 2014 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: math kernel math.ranges math.functions sequences ;
IN: peuler;

: euler-001 ( max -- x )
    1 - ! pe specifies "below" num , so max = arg - 1
    dup 
    dup ! make 2 copies of max
    [1,b] [ 3 divisor? ] filter sum ! all mults of 3 below num
    swap  ! get the second copy of max
    [1,b] [ 5 divisor? ] filter sum ! all mults of 5 below num
    +  ! add the 5 sums and three sums ..  now contains 2 copies
       ! of mults of 15
    swap ! get the original max
    [1,b] [ 15 divisor? ] filter sum ! get 15-mults
    - ! subtract from sum
    ;
