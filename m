Received: (qmail 25859 invoked by uid 550); 27 Sep 2025 21:02:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22399 invoked from network); 27 Sep 2025 08:30:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758961818; x=1759566618; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w65gzEkPJERk/n/pdjeWCZvjLF3Vi+n2ZgomNP1sGqw=;
        b=TcFvdXNdxNvR6fhYACmJBiJYd/z3ueEGkANXbOih/s6Vgd9GZmMrDTQDwqoVTDruh4
         fhcy7j5pwFxRaZx6/42vLzbwvB2lmoDhEZkLmJ8YTuN7g+z72Cbwee2QTZ4mBOFHRVjw
         sHb8svuRBViyk2l4sLA7WVYzfA2TAWas/D917v2i5GOTGSRmM6ljldhAtndxNJ+tKNiK
         o4TVCLR37vtnM0uedbJ+EsF+7R6zVulfjwnnRs91c8cS5SYwJ+3rTI77jm0MYu0vDmoz
         Z+2aPWzLDXYMnLjBSQHk/NvT8dzOGl9R/LZhLtgDOsU3a8V2YjxbEZ55i2yNeY6M5wW+
         tqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758961818; x=1759566618;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w65gzEkPJERk/n/pdjeWCZvjLF3Vi+n2ZgomNP1sGqw=;
        b=SaJDo3UyBw6XySUqGrAh7SvyiCWZvqC2wlDlPvQ89FFrnc3OoKiLUEUDj86c7UJtco
         rbp0/dLth3gcUl007C/Cy1vb3OE42dNEVfJQYRklKwLYbEv/hNSheFCa69/5T7o7ylq/
         cqygtf6GBS6ja71QpE/oc79ovKAFMMTcr/9XqRUbsdGUWK0kgYjYOui5WWuGhPQCpmgQ
         +shLctq4hrAO9peDyhbiDsok3n/Tuib52wgPmoieLXcuEJqn3NAompAg6N1ZR57XuLja
         m12W/NuQTd6Zp3VAQSt0GcbjVhQBPOdyjRBD2KY/fAOwRKewSgbFh2Eszt+CzBuk//RH
         zngw==
X-Gm-Message-State: AOJu0YzVumf+Q2zIKfPUW1AlHyAWQhS2o/+1V7ZOdkXH/52qo+yqD6Wi
	m+ceNk/+lFGzINO8jq1p56jA81jrRlydHEU2YKN4H+w7WwhreOGtJ9L3mpTVJRzhczUZZYdAsna
	elQkPrzHCjWLQXN4qVCn9yD/rGOIIv7nDf0gUBPieGQ==
X-Gm-Gg: ASbGnctG+TuYpBptzrbFBuLtbBtEFeKMWETlnM7r2PSuLA+oEdIR1Apj71Mw0mxON1c
	o3BRIgTEGxB1a8PuSky8w7OX95nEbgut9BH41KNaXjtpykXX7tM9DEs2I9i8n1b40s1QBIdMBMq
	Y1K1I2iyDQLWdXNshHKdGZaFVioOOJVuq2j38aWXvPuEBIRUaXdsTrcK7XgsWYGwFYOXEbtD++h
	DZlevAcS2xHQFr/vZObbgq2/OW+I7Edx5eHZFDxjtnVhr4M1Ec=
X-Google-Smtp-Source: AGHT+IFyIywrPCiW3sDtlKfcUJQqiPIzMd+YBB721eTVm2w7mpiu0djh3A1nHUZGvxonosSpkPCUQdfhWd+55qsjUos=
X-Received: by 2002:a05:690e:4301:b0:633:c22b:f0b2 with SMTP id
 956f58d0204a3-6361a6ebc38mr7710532d50.7.1758961818388; Sat, 27 Sep 2025
 01:30:18 -0700 (PDT)
MIME-Version: 1.0
From: Amit <amitchoudhary0523@gmail.com>
Date: Sat, 27 Sep 2025 14:00:07 +0530
X-Gm-Features: AS18NWDcKXufMac6aQtviqW9VYqSiYZ630THO2eP_ZI1VvQpmXQxjQ7IY7Vrl7I
Message-ID: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] How to do secure coding and create secure software

-----------------------------------------------------------------------
How to do secure coding and create secure software
-----------------------------------------------------------------------

I can do secure coding and no one can hack my code unless the language/OS have
some issues. You can challenge me on this.

Ultimately, all software boil down to functions/methods. If functions/methods
are secure then the whole software is secure.

If all functions in all software in this world are secure then there won't be
any hacking.

Now, in the following text, the word function will mean both function and
method.

I am listing the main points of secure coding below. These points are applicable
to almost all languages.

1. The first point is that all the arguments to your function should be checked
always whether they are in the allowed range or not, even if your function is
called from other trusted functions and even if your function is
private/protected or static. The value of a function argument should not be
unbounded, it should be within a bounded range. All function arguments should
have a MIN value and a MAX value. For example, you can specify that the minimum
length of a string argument should be 1 and the maximum length of the string
argument should be 1024. Now, for getting the length of the string you will have
to write your own strlen() function, you can't depend on the strlen() function
of any library because the library's version will keep counting until it finds
'\0' character and by then your program may crash. If you are using C language
then you can use strnlen() function. The code will be "len = strnlen(str, 1025);
if (len == 1025) { return error; }". Similarly, your 'int' arguments, 'float'
arguments, etc. should also have a bounded range (a MIN value and a MAX value).
Also, always check that whether the pointer arguments are NULL or not.

Now, a counterpoint can be that checking all the function arguments will take
more time but actually because of very fast processors available these days,
it will not take noticeable time. On a 1 GHz processor, you can execute
1 Gig (2^30 or 10^9 for simplicity) instructions per second. So, if you are
checking a pointer for NULL then it will be around 5 instructions. So, this
will take only 5 nanoseconds (5 * 10^-9 seconds). So, time consumed in checking
arguments is not a big issue. Checking the length of a string may take some more
time but it will also be not noticeable. Assuming 5 instructions for checking
for NULL character ('\0') and 1 instruction for incrementing the len variable
and another 5 instructions for comparing the len variable to the MAX string len,
then we have 11 instructions per character. If the length we want to check is
1000 then it will be 11,000 instructions and it will take only 11 microseconds
(11 * 10^-6 seconds). So, this time is also not noticeable.

2. The function body should also be secure. After writing code, you should
review your code for security issues and also get it peer reviewed for security
issues. In general, you should always get your code peer reviewed for security
issues, bugs, company coding guidelines, etc. Some common security issues are -
infinite loops that were actually not intended to be infinite loops, NULL
pointer dereference, accessing memory that is not part of your program, copying
more data in a buffer than the actual size of the buffer (aka buffer overflow),
stack overflow, out-of-bounds access (for arrays), using memory/pointer after
freeing it, etc. If you are programming in C language then you shouldn't use
unbounded C functions like - strcpy(), strlen(), strcat(), gets(), etc.,
but instead you should use bounded C functions like - strncpy(), strnlen(),
strncat(), fgets(), etc.

3. Always check the return values of the functions that you are calling before
proceeding ahead. Don't assume that all functions will always succeed. It is
quite possible that a function always succeeds in internal testing but it may
fail when customers start using your software. If the function that you called
returned an error and if you didn't check it and proceeded ahead then wrong
things can happen and these wrong things can open a security hole in your
software and your software may get hacked.

4. Don't use an unsigned data type unless you are dealing with binary data
(like - raw bits, raw bytes, network data, data from hardware devices, etc.).
Although unsigned data type in itself doesn't present any security issue but if
the usage of the unsigned data type is wrong then it can lead to security
issues. For example, if you use an unsigned integer variable in a loop and the
exit condition of the loop is that this unsigned integer variable becomes less
than 0, then this loop will never exit because an unsigned integer variable will
never become negative and this infinite loop can open some security holes in
your software. Another issue with unsigned data type is that when you convert
an unsigned data type to a signed data type then although the bits values are
not changed but the interpretation of the bits values change because the data
types are different. So, let's say that you have an unsigned integer 'u' and in
'u' the most significant bit is set. But, 'u' is still positive because it is of
unsigned type. Now, if you typecast 'u' to a signed integer variable 's' then
's' will be interpreted as being negative because the most significant bit is
set. So, "u > 0" will be true but "s > 0" will be false. So, now, if you use 's'
in some comparison then the results may not be as expected and this may open a
security hole in your software.

5. Don't typecast between data types of different lengths. This is because the
values may change if you typecast from a longer data type to a shorter data
type. For example, let's say that you have a 'long' variable 'l' that has a
value of 8589934591 (0x1FFFFFFFF) and now if you typecast it to an 'int'
variable 'i', then the value of 'i' will become -1 (0xFFFFFFFF). Now, when you
use 'i' in your program then unexpected things may happen and these may lead to
security issues in your software.

When you typecast from a shorter data type to a longer data type and if the
shorter data type is negative then signed extension will happen in the longer
data type and you may not be expecting that and this may probably open a
security hole in your software.

6. Don't hard-code passwords or any other credentials in your program/software.
Hard-coding these is a big security issue.

7. Don't use recursive functions, unless absolutely necessary, because recursive
functions can lead to stack overflow and stack overflow is a security issue.

8. Avoid using global variables. In object oriented languages avoid using public
variables as much as possible. In C language also you should avoid global
variables, but in case you need to use some, then make them 'static' so that
they are not visible outside the file.

9. Initialize all variables (global/local/static/private/protected/public) to
proper values before using them (in C/C++ uninitialized global and static
variables are automatically initialized to 0).

10. Don't expose all functions to the user. Expose only those functions that the
user will actually need, rest of the functions should be private/protected in
object oriented languages and static in C language.

In my opinion, if you follow these points then your functions/software will be
secure. I follow these points and my functions/software are fully secure, they
can't be hacked.

----
