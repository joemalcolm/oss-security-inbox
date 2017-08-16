X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2695" "Wednesday" "16" "August" "2017" "18:08:53" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87ziazjhca.fsf@fifthhorseman.net>" "64" "Re: [oss-security] Insecure DNS dependency in many Kerberos deployments" "^Cc:" nil nil "8" "2017081622:08:53" "[oss-security] Insecure DNS dependency in many Kerberos deployments" (number mark "        dkg@fifthhor Aug 16   64/2695  " thread-indent "\"Re: [oss-security] Insecure DNS dependency in many Kerberos deployments\"\n") "<87y3qjcscp.fsf@hope.eyrie.org>" ("<d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>" "<87y3qjcscp.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14201 invoked by uid 550); 17 Aug 2017 00:06:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14149 invoked from network); 17 Aug 2017 00:06:09 -0000
In-Reply-To: <87y3qjcscp.fsf@hope.eyrie.org>
References: <d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com> <87y3qjcscp.fsf@hope.eyrie.org>
Message-ID: <87ziazjhca.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Cc: oss-security@lists.openwall.com
Date: Wed, 16 Aug 2017 18:08:53 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Insecure DNS dependency in many Kerberos deployments
To: Russ Allbery <eagle@eyrie.org>, Florian Weimer <fweimer@redhat.com>

--=-=-=
Content-Type: text/plain

On Wed 2017-08-16 10:52:54 -0700, Russ Allbery wrote:
> Florian Weimer <fweimer@redhat.com> writes:
>
>> As a rule of thumb, the impact is similar to running TLS with CA-based
>> certificate validation, but without host name checks (but perhaps
>> slightly less because the trust domains could be much smaller).
>
> I think this overstates the impact somewhat.  This is more worrisome with
> TLS because for most TLS applications there is a single global trust
> domain with certificates issued by dozens or hundreds of parties and no
> organizational scoping.

fwiw, I think that's what Florian means by his parenthetical aside.

> This is a much higher bar to meet, and in a lot of organizations this
> bar cannot be easily met by an attacker.

While i understand the desire to be clear about the constrained scope of
the risk, i think another way of saying what you're saying is "control
over one service in a domain and the ability to poison the DNS allows
that service operator to masquerade as any other service in the domain".

Even for domains where a single administrator controls all machines,
this violates principles of privilege separation that admins rely on to
be able to deploy potentially-buggy services without putting the other
services at risk.

So i think it's worth taking this seriously, despite(?) its age and
widespread deployment.

> For the record, those are settings for *a* Kerberos client library,
> not *the* Kerberos client library (specifically, the MIT Kerberos
> implementation).  Heimdal does not use those settings, and there are
> other Kerberos implementations as well.

The fact that some client libraries *don't* do this should give us hope
that it's fixable, even in existing deployments :)

     --dkg


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlmUwnUACgkQFJitxsGS
Mjeimg//QPPiV7FvJezOPWOkW4PX/efxYUX2yG6jgifCxrnFmWG4hpeZsFuoNXoY
4vi3CO+eqgBGlibu3ncnapVsxfdbcqVH2QUoec4XkPOXuyF2Pst15IUAvYYJTmpH
k8EmVeuAmwrDB2Hrg97aTuZWCMdybAgeWhOtS2a0iFw10eNHP0RMi3XhUHS2w6d8
BhPC3VH0mtUpbWOJMkEn4ycFJXIJZQpfJx7oETChFx78NAYL5Uqhjg8yZv5+7mBl
NzYe9gz8u+CeftugSLkY6dGdENkSu4tT8amevOfX0sugxwKfI7ArAy55u/bE5R18
QatrmkFngKojMrLiKhzYeV2gF2IDGChzyC/hrN4VnKaThLJVEZbOoSk3zvlpQjiW
E9baz+71m53mt9UwI+6tZpfFvRT4xW/VspO78fhYXmdqehbwEEKfpIvmmzPyCpbQ
m4CuEaS+hUlAaFNm1JPv2MmIP4t5lPGiMJKGxjwAx21tM7FSGua3X2gjnu+cBNMq
+C3njSLGHiMNM8UPCuxPeCAY2YJQnzrruQ6hsh9Mi+t2Q5iDcZiAEiqB1A+wSsiA
9kv9NrYW45E0wYNcKCHijkD9CNuSJA90Qzp0saqmhjF4PCkuAAW+g+zk8C3YPpeW
mI5ECuglD6CSERokyZAEhvPhOCuLHDhdNpN1uIQ3UlTLIUAqAJE=
=sWDA
-----END PGP SIGNATURE-----
--=-=-=--
