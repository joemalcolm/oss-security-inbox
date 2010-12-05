X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/05/3
Message-ID: <AANLkTim9X_yPg3DZds8BZadeF+0-n-Q8gi=okFXY-Bp=@mail.gmail.com>
Date: Sun, 5 Dec 2010 15:03:36 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Interesting behavior with struct initiailization
Content-Type: text/plain; charset=utf-8

This is unnecessary and wastes a lot of cycles.  There's no reason to
even consider anything that performs worse than a simple memset(&arg,
0, sizeof(arg)).

-Dan

On Sun, Dec 5, 2010 at 1:58 PM, Bhadrinath <bitstrat@...il.com> wrote:
> One solution that could ensure no padding bits are copied uninitialized,
>
> *******************************************************************************
> struct test{ int a; char b; int c;};
>
>
> // Let arg be the one to be copied into user space
> struct test arg = { .a = 1, .b = 2, .c = 3 };
>
> // Create an equivalent structure
> struct test argC;
>
> .
> .
> .
> // Do all the operations on arg and just before passing it to the function
> // clear the argC to zero
>
> memset_s(&argC, 0,sizeof argC);
>
> // Now copy the contents of arg into argC one by one
> memcpy(&argC.a,&arg.a,sizeof arg.a);
> memcpy(&argC.b,&arg.b,sizeof arg.b);
> memcpy(&argC.c,&arg.c,sizeof arg.c);
> //This ensures that no uninitialized padding bits are passed to the user space
>
> copy_to_user(ptr,&argC,sizeof argC);
>
> *******************************************************************************
>
> Comments and other ideas are welcome.
>
> Regards
> Bhadrinath
>
>
>
>
>
>
>
>
>
