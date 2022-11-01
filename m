X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/01/1
Message-ID: <n7n0r558-o321-679p-5soo-4noso91q1q27@inai.de>
Date: Tue, 1 Nov 2022 12:53:36 +0100 (CET)
From: Jan Engelhardt <jengelh@...i.de>
To: oss-security@...ts.openwall.com
Subject: Re: Is third party javascript on a login page considered dangerous?
Content-Type: text/plain; charset=utf-8

On Monday 2022-10-31 10:16, Georgi Guninski wrote:

>In short, is third party javascript on a login page considered dangerous?

Any code should be treated as potentially dangerous.
The less you have overall, the better.
I do not see why a login page of all things needs code.

Input form, fields for username / password / other authentication 
tokens, a submit button. Boom, done. If there is a REST interface or 
somesuch, authentication tokens are also provided at once when a client 
makes a request (i.e. with no code execution apriori) - so why would 
your login page need any.
