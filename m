X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/05/2
Message-ID: <loom.20101205T193941-313@post.gmane.org>
Date: Sun, 5 Dec 2010 18:58:07 +0000 (UTC)
From: Bhadrinath <bitstrat@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Interesting behavior with struct initiailization
Content-Type: text/plain; charset=utf-8

One solution that could ensure no padding bits are copied uninitialized,

*******************************************************************************
struct test{ int a; char b; int c;};


// Let arg be the one to be copied into user space
struct test arg = { .a = 1, .b = 2, .c = 3 }; 

// Create an equivalent structure
struct test argC;

.
.
.
// Do all the operations on arg and just before passing it to the function
// clear the argC to zero

memset_s(&argC, 0,sizeof argC);

// Now copy the contents of arg into argC one by one
memcpy(&argC.a,&arg.a,sizeof arg.a);
memcpy(&argC.b,&arg.b,sizeof arg.b);
memcpy(&argC.c,&arg.c,sizeof arg.c);
//This ensures that no uninitialized padding bits are passed to the user space

copy_to_user(ptr,&argC,sizeof argC);

*******************************************************************************

Comments and other ideas are welcome.

Regards
Bhadrinath








