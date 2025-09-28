Received: (qmail 12076 invoked by uid 550); 28 Sep 2025 22:09:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19788 invoked from network); 28 Sep 2025 21:43:20 -0000
Date: Sun, 28 Sep 2025 22:43:11 +0100
To: oss-security@lists.openwall.com
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
In-Reply-To: <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20250928214311.BF89F8F5@notatla.org.uk>
From: lists@notatla.org.uk
Subject: Re: [oss-security] How to do secure coding and create secure software

> Can someone give an example as to how a software made up of secure
> functions can be hacked?

The security depends not only on the program but on your requirements and the
environment where it is used.
https://bad-example-find-xargs-rm.s3.eu-west-2.amazonaws.com/find_xargs_rm.html

There's the whole subject of side channels where computers are bad at keeping secrets.

On scoring high at the wrong task I recommend:
https://www.cl.cam.ac.uk/archive/rja14/Papers/wcf.pdf

Books:
Schneier: Secrets and Lies
https://www.amazon.com/Secrets-Lies-Digital-Security-Networked/dp/0471453803/

Anderson: Security Engineering
https://www.amazon.com/Security-Engineering-Building-Dependable-Distributed/dp/1119642787/

Viega & McGraw: Building Secure Software
https://www.amazon.com/Building-Secure-Software-Security-Documents-ebook/dp/B003CW67YQ/
