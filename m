X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1028" "Tuesday" "5" "May" "2015" "08:53:42" "+0200" "Florian Weimer" "fweimer@redhat.com" "<554868F6.1070305@redhat.com>" "22" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050506:53:42" "[oss-security] PHP and some == wonkiness" (number mark "        fweimer@redh May  5   22/1028  " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" ("<55479C75.3070000@redhat.com>" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17788 invoked by uid 550); 5 May 2015 06:53:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17768 invoked from network); 5 May 2015 06:53:59 -0000
Message-ID: <554868F6.1070305@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <55479C75.3070000@redhat.com> <CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
In-Reply-To: <CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 05 May 2015 08:53:42 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: oss-security@lists.openwall.com

On 05/04/2015 08:34 PM, Pádraic Brady wrote:

> It all boils down to PHP loose typing/type juggling for == and strict
> type comparison for ===. The first option will trigger a set of rules
> capable of converting strings into floats or integers, based on
> whether both strings are representative of a float (i.e. your
> example), or where one of the values being compared is already an
> integer/float. Unfortunately, it is indeed a common weakness to not
> use strict comparisons in security related code. For example, Laravel
> had a recent issue in comparing CSRF tokens where passing in a zero
> always passed the check from this mistake,

Oh.

But the current case apparently needs a string from a very specific set.
 Do we know the digests which trigger this?  If it has to be "0e"
followed by only digits on both sides, it is somewhat unlikely that you
have a reference string with this property, especially if SHA-1 is used
(around 6.84×10¯¹¹, if I'm not mistaken).

-- 
Florian Weimer / Red Hat Product Security
