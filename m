Received: (qmail 15694 invoked by uid 550); 3 Nov 2022 11:32:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3390 invoked from network); 2 Nov 2022 22:43:13 -0000
Date: Wed, 02 Nov 2022 23:43:00 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20221102224300.xqyTm%steffen@sdaoden.eu>
In-Reply-To: <Y2K1yOB7748iGI2P@wopr>
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer> <Y2K1yOB7748iGI2P@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-329-gce485e68d3
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

Kurt H Maier wrote in
 <Y2K1yOB7748iGI2P@wopr>:
 |On Wed, Nov 02, 2022 at 03:09:21PM +0100, Hanno B=F6ck wrote:
 |> FWIW it only takes a basically trivial fuzz target on the affected
 |> function to find this bug with libfuzzer.
 |
 |I'm not sure what the value is of all this Monday-morning
 |quarterbacking, from 'basically trivial' fuzzing to code-quality
 |comparisons of hypothetical Rust ports.  OpenSSL's development process
 |has a bad rap, and there are definitely some easy wins to be had.

I never understood this way of seeing things.

Basically all the (non-military, at least) world was using it for
decades without giving back a kopek, and there were funny threads
on the ML, and basically that neat perl-based assembler production
system for even more speed-ups was a noticeable part of the
traffic.

So then heartbleed came and suddenly projects splitted off, but
luckily some funding was finally found for the OpenSSL project
itself, which made me cheer.

Since then more and more paid programmers are working there, and
have rewritten most of the code (i did not look as it is such
a detangled thing, like GNU C lib was twenty years ago, and until
you have found what you look for you have gray hair), added
myriads of tests, etc etc.

They also went to a public hoster and have thousands of issues as
more people look in the code as ever before (i would think, but
i was not looking at the community before ~2011).

I saw some odd naming issues, left-behind interfaces (that i like
a lot, mostly SSL_CONF_cmd() and <-> configuration files, but
unfortunately the road to sanity that this would allow was never
forcefully advertised; and this was somewhere before the 3.x
series was released, it could have been healed in the meantime).

It is not me alone that thinks that documentation misses
a straight path, i mostly live on "network security with OpenSSL"
that is a bit aged, so to say.
I personally have problems with the attitude too, the silent
openssl-dev@ i was on for a decade was replaced with a super
chatty thing that i left very quickly, i really hate their
announcements which link to some web site which basically says
a non-interactive sentence if you are lucky, so i always say
"thanks" and look upwards to the Olymp, basically.
Anyhow: my personal problem.

In short: where _so_ much work is done, and so many people work,
errors can surely happen.
I want to point out that other libraries which forked away often
simply copy code over from OpenSSL after that has done the work.
Not always, but it happens frequently.
I do not depreciate the fact, but it is one.

It is just that _i_ do not rub my very big balls (this does not
mean you, Kurt Maier) and point my finger at a project which is
the foundation for a very large part of _free_ and _open_ security
for the internet.

Donate for testing, maybe?  Dedicate time to write boring tests
maybe?  All you need to do is to become a member of that big thing
that does not like Iran, North Korea, Cuba, and i am a bit
misguided of who are the bad guys (evil states) at the moment,
it does not truly reflect my personal truth.  But so it is.

 |Posting "if they'd only adopted my pet practice" to oss-sec isn't fixing
 |anything in the OpenSSL project.  Please consider directing fuzzing
 |advice and PL theory directly to the project?  I agree there would be
 |benefit to this stuff, but dunking on them on unrelated lists isn't
 |getting the medicine to the patient.

Ah yes!
The number of tests is in fact driving me _insane_.  I track git..

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
