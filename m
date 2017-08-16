X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2549" "Wednesday" "16" "August" "2017" "10:52:54" "-0700" "Russ Allbery" "eagle@eyrie.org" "<87y3qjcscp.fsf@hope.eyrie.org>" "51" "Re: [oss-security] Insecure DNS dependency in many Kerberos deployments" "^Cc:" nil nil "8" "2017081617:52:54" "[oss-security] Insecure DNS dependency in many Kerberos deployments" (number mark "        eagle@eyrie. Aug 16   51/2549  " thread-indent "\"Re: [oss-security] Insecure DNS dependency in many Kerberos deployments\"\n") "<d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>" ("<d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7298 invoked by uid 550); 16 Aug 2017 18:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26424 invoked from network); 16 Aug 2017 17:53:09 -0000
In-Reply-To: <d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com> (Florian
	Weimer's message of "Wed, 16 Aug 2017 10:50:33 +0200")
Organization: The Eyrie
References: <d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.2 (gnu/linux)
Message-ID: <87y3qjcscp.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Wed, 16 Aug 2017 10:52:54 -0700
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Insecure DNS dependency in many Kerberos deployments
To: Florian Weimer <fweimer@redhat.com>

Florian Weimer <fweimer@redhat.com> writes:

> As a rule of thumb, the impact is similar to running TLS with CA-based
> certificate validation, but without host name checks (but perhaps
> slightly less because the trust domains could be much smaller).

I think this overstates the impact somewhat.  This is more worrisome with
TLS because for most TLS applications there is a single global trust
domain with certificates issued by dozens or hundreds of parties and no
organizational scoping.  This is *not* the case for Kerberos.  To exploit
this flaw in Kerberos, the attacker has to be able to control service
principals (for the same target service with a different hostname) within
the same Kerberos realm (or, in some circumstances, one reachable by
cross-realm trust).  This is a much higher bar to meet, and in a lot of
organizations this bar cannot be easily met by an attacker.

The attack is definitely possible, and the Kerberos community has been
aware of this problem for a long time (there are a lot of difficult issues
involved in closing it, but everyone has wanted to close it), but it's not
as exploitable as the TLS equivalent (at least in the absence of
organizational cert pinning).

> The Kerberos client library enables this canonicalization by default:

>        dns_canonicalize_hostname
>               Indicate  whether  name lookups will
>               be used  to  canonicalize  hostnames
>               for  use in service principal names.
>               Setting  this  flag  to  false   can
>               improve    security    by   reducing
>               reliance  on  DNS,  but  means  that
>               short  hostnames will not be canoni=E2=80=90
>               calized  to  fully-qualified   host=E2=80=90
>               names.  The default value is true.

>        rdns   If this flag is true,  reverse  name
>               lookup  will  be used in addition to
>               forward name lookup to  canonicaliz=E2=80=90
>               ing  hostnames  for  use  in service
>               principal names.  If  dns_canonical=E2=80=90
>               ize_hostname  is  set to false, this
>               flag has  no  effect.   The  default
>               value is true.

For the record, those are settings for *a* Kerberos client library, not
*the* Kerberos client library (specifically, the MIT Kerberos
implementation).  Heimdal does not use those settings, and there are other
Kerberos implementations as well.

--=20
Russ Allbery (eagle@eyrie.org)              <http://www.eyrie.org/~eagle/>
