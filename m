Received: (qmail 17588 invoked by uid 550); 30 Sep 2025 15:59:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13333 invoked from network); 30 Sep 2025 09:25:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759224310; x=1759829110; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WbHY1xTtysLHyizIrha0W0CUHbQwqw2t26g7v+3H4D8=;
        b=J5Zs8BzcmewGMmcs1G1jBSnwe0nXKstjy/myGZG7PujzUdUdFswgntoXwZjOAmz6UB
         dL6DzvYCBfN69IM2Mau5czjdy3XSDBUlOrtgbqBtdQQDWRm9dIywLcqSS298G05QpAAB
         urECdI/HqX/WlXwf7CsrnPuMBOx9HQaLlSJ5soFroauVu2O8WEhQQuWeLWINSTRaRKWu
         y8CKOsMXIma1m4oqsadLFDTZOFhakB1WiMKJZWDgLzAeY6/T2vWF3joTXosbHCFON3UW
         Vxpa0FN+3KYUzZ3o3EPGFDO+QqLeTN+gTVOc6IoFVd4MfCCGyEKw9Zt3qoVFtind0O6f
         u1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759224310; x=1759829110;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WbHY1xTtysLHyizIrha0W0CUHbQwqw2t26g7v+3H4D8=;
        b=p0yWIIizieQiHp+rSqKMRg1oy3XJLIsb0lCkj0FrBRrJZQwS9FZ9P2Nx9yQKT1b0eT
         QRRRbdPGiRdXudDGcY0cXQzTRfYgtVtEftp0DOMZ0A+VqHr5TU04Si8g3TeN68SolRfl
         ip1Kxw7cTIoTAdIB8wb9wWBj3HFlzYe11k/21PSFqoNqWWB8lvsrarWgBtonJjoIGmmm
         Ar+/5ZCCSeKGRDFGK7FVa8RVG/w4wf8aADuTJ9T7HUIh1M/Cb17Ezi4KKlj35wW8culz
         FYv+dIPJ1JYxYctl7aI96SZ9hL1/d1MGIk5ayb/5yl9Ad0UudhWKHTKPHsaImcRdPlyp
         vE2Q==
X-Gm-Message-State: AOJu0YxVkYRmSd0W0yUS8OaB4E3jN7SJx2Uq9ewaFEPqVx+BOpzUKwtm
	v6ptMOIxMop6o9goNxtflVOXwJN3i+j/tx5Ne5UhoSxAGmvmX4KR2GPKMRro1Jo/UiFozHtgRY1
	rKIsIfqottr5AiBNi6PQbz2Y/FJ3k+jzyjQ8LWvU50A==
X-Gm-Gg: ASbGncsq9pyQwqkJ7XEk9y3xskM7VRGqU/sT5zdaxpryOJuJ32R27gILxF9j3U4wr5A
	aC+Q0h82yo6bvQ0znJ8XBqjkSrIdCa1W8tJB0skjejlesj3iFhPAfWHVHHRGEL6uxUkUEcZ3Nr0
	w3+LjSTxsLQ2HdVJ/34bSUhSL3GRJpFVCNZEU6DiVDxZ2xd/lzsaF5KurGpvcgQBuLcLO7XLucd
	Ioo+b/WHIKtPYhwq64fTIDwacJVHJFUjTqji6Hzaw9mwpghyoRgwiW2fBJmQDTutwwlN0Y0/phi
X-Google-Smtp-Source: AGHT+IESC7YFpk8uj6N+d4ksHnMm/bd+NougezcV6FX6ACsTavzFJq9aXJvCAbd4TGcJoMlXGStSD5Lc+0DPymOKdKk=
X-Received: by 2002:a05:690e:429c:10b0:636:d3c3:67e3 with SMTP id
 956f58d0204a3-636d3c36fd9mr16487695d50.50.1759224310334; Tue, 30 Sep 2025
 02:25:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <20250930052352.GA23546@openwall.com> <1dab9d0b-cd90-406a-81a5-5b20fffe81a5@gmail.com>
 <20250930061823.GA26871@openwall.com>
In-Reply-To: <20250930061823.GA26871@openwall.com>
From: Amit <amitchoudhary0523@gmail.com>
Date: Tue, 30 Sep 2025 14:54:58 +0530
X-Gm-Features: AS18NWAxnd3I62MAKS83tE8wCKvdW9J__qPpiPe09E3Xp4LeXlTO_xnVygZoBFs
Message-ID: <CAFf+5zio7VxKn_9sDoRc7ap5D8m5LDfWBn5AOd54jLU5Veh4NQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000190b850640015453"
Subject: Re: [oss-security] How to do secure coding and create secure software

--000000000000190b850640015453
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Sept 2025 at 11:50, Solar Designer <solar@openwall.com> wrote:

> A correction:
>
> On Tue, Sep 30, 2025 at 07:23:52AM +0200, Solar Designer wrote:
> > A malicious HTTP client connects to the HTTP server and requests an URL
> > corresponding to the CGI script.  It uses the PUT method.  It passes a
> > header named GET_SHELL_FUNCTION with a value that defines a shell
> > function body, which ends up injected and executed.
>
> This should be PUT_SHELL_FUNCTION in place of GET_SHELL_FUNCTION.
>
> On Tue, Sep 30, 2025 at 01:02:01AM -0500, Jacob Bachmeyer wrote:
> > On 9/30/25 00:23, Solar Designer wrote:
> > >[...]
> > >So is the vulnerability in the shell, like Shellshock was determined to
> > >be?  [...] the shell maintainers may well dispute this CVE on
> > >such grounds as well as because the shell worked exactly as documented.
> > >[...]
> >
> > Small nit here:  Shellshock was clearly a vulnerability in Bash and I am
> > unsure if the way Bash exports shell functions was documented at all.
>
> I agree, which is why I invented a different and documented alternative
> for the sake of this example.
>
> > If presented with an environment variable value having the correct form
> > for a shell function, but containing more text than the body of the
> > function, Bash would immediately execute the trailing text as commands
> > while importing the shell function from the environment.  That was
> > Shellshock.
>
> Yes, there were multiple Shellshock-related code issues in bash, and
> several CVEs were rightly assigned against bash.  No arguing about that.
> Also, the proper Shellshock was exposed as a vulnerability by far not
> only through HTTP servers, since it parsed variables of any names.
>
> My point is that a similar documented and correctly implemented feature
> could also become a vulnerability in some interactions.
>
> Now let's be winding this thread down, please.
>


Definitely, let's wind down this thread.

My final point: My whole idea was that a normal programmer doesn't know
that if all functions (including main) are secure then the software will be
secure. And the programmer should only worry about making his/her functions
secure and not think about the whole software and the programmer doesn't
need to think about side-channel attacks, buffer-overflow attacks, etc.
Basically, I have narrowed down the security of the software to the
functions. And that's why I wrote that article to educate
programmers/people.

But it looks like people here think that my article is useless. It is fine
with me. I know that not everyone in the world will agree with me.

Developers (whether closed source or open source) don't take input
validation seriously - in glibc/POSIX, many functions don't validate the
inputs and cyberattackers have taken advantage of glibc vulnerabilities in
the past (like buffer overflow, etc.). It is also very easy to crash
glibc/POSIX functions.

By the way, I never said that a function should crash if an input is
invalid. Although, I didn't say it explicitly, but I return an error if
some input is invalid.

And as far as losing performance because of input validation is concerned,
I have done few experiments with glibc and I validated qsort() function
arguments (4 in number) and the performance degradation was only 2.61%.

I definitely want to wind down this thread.

Below is an example of the code that I write:

==========================
int tl_add_menu_item(struct tm_container *tc_ptr, const char
*menu_item_text,
                     FUNC_PTR func_ptr, void *private_data)

{



    struct menu_item *mi_ptr = NULL;

    size_t len = 0;



    if (!tc_ptr) {

        return TL_TC_PTR_IS_NULL;

    }



    if (!menu_item_text) {

        return TL_MENU_ITEM_TEXT_IS_NULL;

    }



    if (!func_ptr) {

        return TL_FUNC_PTR_IS_NULL;

    }



    if (tc_ptr->number_of_menu_items_added ==

                                    tc_ptr->total_number_of_menu_items) {

        return TL_NO_MORE_MENU_ITEMS_CAN_BE_ADDED;

    }



    len = strnlen(menu_item_text, TL_MAX_MENU_ITEM_TEXT_SIZE);



    if ((len < 1) || (len == TL_MAX_MENU_ITEM_TEXT_SIZE)) {

        return TL_MENU_ITEM_TEXT_SIZE_IS_OUT_OF_BOUNDS;

    }

==========================

--000000000000190b850640015453
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+T24gVHVlLCAzMCBTZXB0IDIwMjUgYXQgMTE6
NTAsIFNvbGFyIERlc2lnbmVyICZsdDs8YSBocmVmPSJtYWlsdG86c29sYXJAb3BlbndhbGwuY29t
Ij5zb2xhckBvcGVud2FsbC5jb208L2E+Jmd0OyB3cm90ZTo8L2Rpdj48ZGl2IGNsYXNzPSJnbWFp
bF9xdW90ZSBnbWFpbF9xdW90ZV9jb250YWluZXIiPjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9x
dW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29s
aWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij5BIGNvcnJlY3Rpb246PGJyPg0K
PGJyPg0KT24gVHVlLCBTZXAgMzAsIDIwMjUgYXQgMDc6MjM6NTJBTSArMDIwMCwgU29sYXIgRGVz
aWduZXIgd3JvdGU6PGJyPg0KJmd0OyBBIG1hbGljaW91cyBIVFRQIGNsaWVudCBjb25uZWN0cyB0
byB0aGUgSFRUUCBzZXJ2ZXIgYW5kIHJlcXVlc3RzIGFuIFVSTDxicj4NCiZndDsgY29ycmVzcG9u
ZGluZyB0byB0aGUgQ0dJIHNjcmlwdC7CoCBJdCB1c2VzIHRoZSBQVVQgbWV0aG9kLsKgIEl0IHBh
c3NlcyBhPGJyPg0KJmd0OyBoZWFkZXIgbmFtZWQgR0VUX1NIRUxMX0ZVTkNUSU9OIHdpdGggYSB2
YWx1ZSB0aGF0IGRlZmluZXMgYSBzaGVsbDxicj4NCiZndDsgZnVuY3Rpb24gYm9keSwgd2hpY2gg
ZW5kcyB1cCBpbmplY3RlZCBhbmQgZXhlY3V0ZWQuPGJyPg0KPGJyPg0KVGhpcyBzaG91bGQgYmUg
UFVUX1NIRUxMX0ZVTkNUSU9OIGluIHBsYWNlIG9mIEdFVF9TSEVMTF9GVU5DVElPTi48YnI+DQo8
YnI+DQpPbiBUdWUsIFNlcCAzMCwgMjAyNSBhdCAwMTowMjowMUFNIC0wNTAwLCBKYWNvYiBCYWNo
bWV5ZXIgd3JvdGU6PGJyPg0KJmd0OyBPbiA5LzMwLzI1IDAwOjIzLCBTb2xhciBEZXNpZ25lciB3
cm90ZTo8YnI+DQomZ3Q7ICZndDtbLi4uXTxicj4NCiZndDsgJmd0O1NvIGlzIHRoZSB2dWxuZXJh
YmlsaXR5IGluIHRoZSBzaGVsbCwgbGlrZSBTaGVsbHNob2NrIHdhcyBkZXRlcm1pbmVkIHRvPGJy
Pg0KJmd0OyAmZ3Q7YmU/wqAgWy4uLl0gdGhlIHNoZWxsIG1haW50YWluZXJzIG1heSB3ZWxsIGRp
c3B1dGUgdGhpcyBDVkUgb248YnI+DQomZ3Q7ICZndDtzdWNoIGdyb3VuZHMgYXMgd2VsbCBhcyBi
ZWNhdXNlIHRoZSBzaGVsbCB3b3JrZWQgZXhhY3RseSBhcyBkb2N1bWVudGVkLiA8YnI+DQomZ3Q7
ICZndDtbLi4uXTxicj4NCiZndDsgPGJyPg0KJmd0OyBTbWFsbCBuaXQgaGVyZTrCoCBTaGVsbHNo
b2NrIHdhcyBjbGVhcmx5IGEgdnVsbmVyYWJpbGl0eSBpbiBCYXNoIGFuZCBJIGFtIDxicj4NCiZn
dDsgdW5zdXJlIGlmIHRoZSB3YXkgQmFzaCBleHBvcnRzIHNoZWxsIGZ1bmN0aW9ucyB3YXMgZG9j
dW1lbnRlZCBhdCBhbGwuPGJyPg0KPGJyPg0KSSBhZ3JlZSwgd2hpY2ggaXMgd2h5IEkgaW52ZW50
ZWQgYSBkaWZmZXJlbnQgYW5kIGRvY3VtZW50ZWQgYWx0ZXJuYXRpdmU8YnI+DQpmb3IgdGhlIHNh
a2Ugb2YgdGhpcyBleGFtcGxlLjxicj4NCjxicj4NCiZndDsgSWYgcHJlc2VudGVkIHdpdGggYW4g
ZW52aXJvbm1lbnQgdmFyaWFibGUgdmFsdWUgaGF2aW5nIHRoZSBjb3JyZWN0IGZvcm0gPGJyPg0K
Jmd0OyBmb3IgYSBzaGVsbCBmdW5jdGlvbiwgYnV0IGNvbnRhaW5pbmcgbW9yZSB0ZXh0IHRoYW4g
dGhlIGJvZHkgb2YgdGhlIDxicj4NCiZndDsgZnVuY3Rpb24sIEJhc2ggd291bGQgaW1tZWRpYXRl
bHkgZXhlY3V0ZSB0aGUgdHJhaWxpbmcgdGV4dCBhcyBjb21tYW5kcyA8YnI+DQomZ3Q7IHdoaWxl
IGltcG9ydGluZyB0aGUgc2hlbGwgZnVuY3Rpb24gZnJvbSB0aGUgZW52aXJvbm1lbnQuwqAgVGhh
dCB3YXMgPGJyPg0KJmd0OyBTaGVsbHNob2NrLjxicj4NCjxicj4NClllcywgdGhlcmUgd2VyZSBt
dWx0aXBsZSBTaGVsbHNob2NrLXJlbGF0ZWQgY29kZSBpc3N1ZXMgaW4gYmFzaCwgYW5kPGJyPg0K
c2V2ZXJhbCBDVkVzIHdlcmUgcmlnaHRseSBhc3NpZ25lZCBhZ2FpbnN0IGJhc2guwqAgTm8gYXJn
dWluZyBhYm91dCB0aGF0Ljxicj4NCkFsc28sIHRoZSBwcm9wZXIgU2hlbGxzaG9jayB3YXMgZXhw
b3NlZCBhcyBhIHZ1bG5lcmFiaWxpdHkgYnkgZmFyIG5vdDxicj4NCm9ubHkgdGhyb3VnaCBIVFRQ
IHNlcnZlcnMsIHNpbmNlIGl0IHBhcnNlZCB2YXJpYWJsZXMgb2YgYW55IG5hbWVzLjxicj4NCjxi
cj4NCk15IHBvaW50IGlzIHRoYXQgYSBzaW1pbGFyIGRvY3VtZW50ZWQgYW5kIGNvcnJlY3RseSBp
bXBsZW1lbnRlZCBmZWF0dXJlPGJyPg0KY291bGQgYWxzbyBiZWNvbWUgYSB2dWxuZXJhYmlsaXR5
IGluIHNvbWUgaW50ZXJhY3Rpb25zLjxicj4NCjxicj4NCk5vdyBsZXQmIzM5O3MgYmUgd2luZGlu
ZyB0aGlzIHRocmVhZCBkb3duLCBwbGVhc2UuPGJyPjwvYmxvY2txdW90ZT48ZGl2Pjxicj48L2Rp
dj48ZGl2Pjxicj48L2Rpdj48ZGl2PkRlZmluaXRlbHksIGxldCYjMzk7cyB3aW5kIGRvd24gdGhp
cyB0aHJlYWQuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5NeSBmaW5hbCBwb2ludDogTXkgd2hv
bGUgaWRlYSB3YXMgdGhhdCBhIG5vcm1hbCBwcm9ncmFtbWVyIGRvZXNuJiMzOTt0IGtub3cgdGhh
dCBpZiBhbGwgZnVuY3Rpb25zIChpbmNsdWRpbmcgbWFpbikgYXJlIHNlY3VyZSB0aGVuIHRoZSBz
b2Z0d2FyZSB3aWxsIGJlIHNlY3VyZS4gQW5kIHRoZSBwcm9ncmFtbWVyIHNob3VsZCBvbmx5IHdv
cnJ5IGFib3V0IG1ha2luZyBoaXMvaGVyIGZ1bmN0aW9ucyBzZWN1cmUgYW5kIG5vdCB0aGluayBh
Ym91dCB0aGUgd2hvbGUgc29mdHdhcmUgYW5kIHRoZcKgcHJvZ3JhbW1lciBkb2VzbiYjMzk7dCBu
ZWVkIHRvIHRoaW5rIGFib3V0IHNpZGUtY2hhbm5lbCBhdHRhY2tzLCBidWZmZXItb3ZlcmZsb3cg
YXR0YWNrcywgZXRjLiBCYXNpY2FsbHksIEkgaGF2ZSBuYXJyb3dlZCBkb3duIHRoZSBzZWN1cml0
eSBvZiB0aGUgc29mdHdhcmXCoHRvIHRoZSBmdW5jdGlvbnMuIEFuZCB0aGF0JiMzOTtzIHdoeSBJ
IHdyb3RlIHRoYXQgYXJ0aWNsZSB0byBlZHVjYXRlIHByb2dyYW1tZXJzL3Blb3BsZS48L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2PkJ1dCBpdCBsb29rcyBsaWtlIHBlb3BsZSBoZXJlIHRoaW5rIHRo
YXQgbXkgYXJ0aWNsZSBpcyB1c2VsZXNzLiBJdCBpcyBmaW5lIHdpdGggbWUuIEkga25vdyB0aGF0
IG5vdCBldmVyeW9uZSBpbiB0aGUgd29ybGQgd2lsbCBhZ3JlZSB3aXRoIG1lLjwvZGl2PjxkaXY+
PGJyPjwvZGl2PjxkaXY+RGV2ZWxvcGVycyAod2hldGhlciBjbG9zZWQgc291cmNlIG9yIG9wZW4g
c291cmNlKSBkb24mIzM5O3QgdGFrZSBpbnB1dCB2YWxpZGF0aW9uIHNlcmlvdXNseSAtIGluIGds
aWJjL1BPU0lYLCBtYW55IGZ1bmN0aW9ucyBkb24mIzM5O3QgdmFsaWRhdGUgdGhlIGlucHV0cyBh
bmQgY3liZXJhdHRhY2tlcnMgaGF2ZSB0YWtlbiBhZHZhbnRhZ2Ugb2YgZ2xpYmMgdnVsbmVyYWJp
bGl0aWVzIGluIHRoZSBwYXN0IChsaWtlIGJ1ZmZlciBvdmVyZmxvdywgZXRjLikuIEl0IGlzIGFs
c28gdmVyeSBlYXN5IHRvIGNyYXNoIGdsaWJjL1BPU0lYIGZ1bmN0aW9ucy7CoDwvZGl2PjxkaXY+
PGJyPjwvZGl2PjxkaXY+QnkgdGhlIHdheSwgSSBuZXZlciBzYWlkIHRoYXQgYSBmdW5jdGlvbiBz
aG91bGQgY3Jhc2ggaWYgYW4gaW5wdXQgaXMgaW52YWxpZC4gQWx0aG91Z2gsIEkgZGlkbiYjMzk7
dCBzYXkgaXQgZXhwbGljaXRseSwgYnV0IEkgcmV0dXJuIGFuIGVycm9yIGlmIHNvbWUgaW5wdXQg
aXMgaW52YWxpZC48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkFuZCBhcyBmYXIgYXMgbG9zaW5n
IHBlcmZvcm1hbmNlIGJlY2F1c2Ugb2YgaW5wdXQgdmFsaWRhdGlvbiBpcyBjb25jZXJuZWQsIEkg
aGF2ZSBkb25lIGZldyBleHBlcmltZW50cyB3aXRoIGdsaWJjIGFuZCBJIHZhbGlkYXRlZCBxc29y
dCgpIGZ1bmN0aW9uIGFyZ3VtZW50cyAoNCBpbiBudW1iZXIpIGFuZCB0aGUgcGVyZm9ybWFuY2Ug
ZGVncmFkYXRpb24gd2FzIG9ubHkgMi42MSUuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGRl
ZmluaXRlbHkgd2FudCB0byB3aW5kIGRvd24gdGhpcyB0aHJlYWQuPC9kaXY+PGRpdj48YnI+PC9k
aXY+PGRpdj5CZWxvdyBpcyBhbiBleGFtcGxlIG9mIHRoZSBjb2RlIHRoYXQgSSB3cml0ZTo8L2Rp
dj48ZGl2Pjxicj48L2Rpdj48ZGl2Pj09PT09PT09PT09PT09PT09PT09PT09PT09PC9kaXY+PGRp
dj5pbnQgdGxfYWRkX21lbnVfaXRlbShzdHJ1Y3QgdG1fY29udGFpbmVyICp0Y19wdHIsIGNvbnN0
IGNoYXIgKm1lbnVfaXRlbV90ZXh0LCDCoCDCoDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoEZVTkNfUFRSIGZ1bmNfcHRyLCB2b2lkICpwcml2YXRlX2RhdGEpIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPnsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+wqAgwqAgc3Ry
dWN0IG1lbnVfaXRlbSAqbWlfcHRyID0gTlVMTDsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKgIMKgIHNpemVfdCBs
ZW4gPSAwOyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxi
cj7CoCDCoCBpZiAoIXRjX3B0cikgeyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCA8YnI+wqAgwqAgwqAgwqAgcmV0dXJuIFRMX1RDX1BUUl9JU19OVUxMOyDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oDxicj7CoCDCoCB9IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPsKgIMKgIGlmICghbWVudV9pdGVtX3RleHQpIHsg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKgIMKgIMKgIMKgIHJldHVybiBUTF9NRU5VX0lU
RU1fVEVYVF9JU19OVUxMOyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCDCoCB9IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPsKgIMKgIGlmICgh
ZnVuY19wdHIpIHsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKgIMKgIMKg
IMKgIHJldHVybiBUTF9GVU5DX1BUUl9JU19OVUxMOyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCDCoCB9IMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJy
PsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgPGJyPsKgIMKgIGlmICh0Y19wdHItJmd0O251bWJlcl9vZl9tZW51X2l0ZW1zX2Fk
ZGVkID09IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIHRjX3B0ci0mZ3Q7dG90YWxfbnVtYmVyX29mX21lbnVfaXRlbXMpIHsgwqAgwqAgwqAgwqA8
YnI+wqAgwqAgwqAgwqAgcmV0dXJuIFRMX05PX01PUkVfTUVOVV9JVEVNU19DQU5fQkVfQURERUQ7
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCDCoCB9
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgPGJyPsKgIMKgIGxlbiA9IHN0cm5sZW4obWVudV9pdGVtX3RleHQsIFRMX01B
WF9NRU5VX0lURU1fVEVYVF9TSVpFKTsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgPGJyPsKgIMKgIGlmICgobGVuICZsdDsgMSkgfHwgKGxlbiA9PSBUTF9NQVhfTUVOVV9J
VEVNX1RFWFRfU0laRSkpIHsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+wqAg
wqAgwqAgwqAgcmV0dXJuIFRMX01FTlVfSVRFTV9URVhUX1NJWkVfSVNfT1VUX09GX0JPVU5EUzsg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+wqAgwqAgfcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8YnI+PC9k
aXY+PGRpdj49PT09PT09PT09PT09PT09PT09PT09PT09PTwvZGl2PjxkaXY+PGJyPjwvZGl2Pjwv
ZGl2PjwvZGl2Pg0K

--000000000000190b850640015453--
