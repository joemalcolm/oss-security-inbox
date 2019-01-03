X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1546" "Thursday" "3" "January" "2019" "20:55:43" "+0100" "Marco Bodrato" "bodrato@mail.dm.unipi.it" "<a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>" "49" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010319:55:43" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        bodrato@mail Jan  3   49/1546  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20105 invoked by uid 550); 3 Jan 2019 20:00:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16321 invoked from network); 3 Jan 2019 19:55:55 -0000
Message-ID: <a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>
In-Reply-To: 
 <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
References: 
    <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: 8bit
X-Priority: 3 (Normal)
Importance: Normal
Cc: oss-security@lists.openwall.com,
 gmp-bugs@gmplib.org
Date: Thu, 3 Jan 2019 20:55:43 +0100
From: "Marco Bodrato" <bodrato@mail.dm.unipi.it>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive
 information)
To: noloader@gmail.com

Ciao,

Il Lun, 31 Dicembre 2018 7:03 pm, Jeffrey Walton ha scritto:
[...skipping opinions...]

> Here's a small example of triggering an assert using the Nettle
> library.

This absolutely is NOT a "small example", it requires to build two entire
libraries!
Anyway we analysed it, see below.

> ARM A-32 does not work at the moment due to GMP build errors.

Can we suggest you to read the GMP manual on how to build the library?
GMP works fine on many ARM configurations we test and there are lots of
projects out there (eg. many GNU/Linux distributions) that builds GMP for
different ARM processors.

> In the case below Nettle is using benign data and not maliciously
> crafted data.

I'm sorry, but your analysis was incorrect.

I agree, Nettle is not using "maliciously crafted data", but I do not
agree when you say that it "is using benign data".

With your build options, Nettle calls the GMP function mpn_sec_powm with
an invalid parameter: ebn = 0.

Because of an error in the Nettle library you built, GMP receives "non
benign data". To avoid further memory corruptions, GMP aborts.

Thanks to this behaviour of GMP, you was able to catch the incorrect built
of the library using it. ;-)

Using mpn_sec_powm with an exponent of zero bits is obviously a nonsense,
and in general the documentation of GMP clearly says that arguments of
size zero are not supported.

On GMP side, we can only specify even more explicitly in the documentation
of that function the need for non-zero sized arguments.

Ĝis,
m

-- 
http://bodrato.it/papers/

