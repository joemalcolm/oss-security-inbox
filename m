X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2296" "Thursday" "25" "August" "2016" "13:50:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160825175049.6E9186C0BB5@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: CVE request: Linux kernel mbcache lock contention denial of service." nil nil nil "8" "2016082517:50:49" "[oss-security] Re: CVE request: Linux kernel mbcache lock contention denial of service." (number mark "U       cve-assign@m Aug 25   55/2296  " thread-indent "\"[oss-security] Re: CVE request: Linux kernel mbcache lock contention denial of service.\"\n") "<CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>" ("<CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7440 invoked by uid 550); 25 Aug 2016 17:51:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7418 invoked from network); 25 Aug 2016 17:51:00 -0000
From: cve-assign@mitre.org
To: wmealing@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>
Message-Id: <20160825175049.6E9186C0BB5@smtpvmsrv1.mitre.org>
Date: Thu, 25 Aug 2016 13:50:49 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Linux kernel mbcache lock contention denial of service.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=be0726d33cb8f411945884664924bed3cb8c70ee
> https://lwn.net/Articles/668718/
> https://bugzilla.kernel.org/show_bug.cgi?id=107301
> https://bugzilla.redhat.com/show_bug.cgi?id=1360968
> 
> A design flaw was found in the file extended attribute handling of the
> linux kernels handling of cached attributes. Too many entries in the
> cache cause a soft lockup while attempting to iterate the cache and
> access relevant locks.
> 
> Upstream has replaced the mbcache code with an updated version which
> was not a patch but a clear-cut reimplementation of the code, no
> single diff
> 
> Soft lockup information is in both the bugzilla.kernel.org and
> referred to in the LWN article. This would affect containers running
> with ext4 as it shares the same mbcache between all containers/host.
> 
> This did not affect Red Hat Enterprise Linux versions 5,6 or 7, so I
> can't validate the claim that it does affect other newer kernels.
> This may be worthwhile tracking for others who are affected by this
> flaw.
> 
> For those following along at home, this seemed to be fixed in:
> 
> git tag --contains be0726d33cb8f411945884664924bed3cb8c70ee
> v4.6

Use CVE-2015-8952.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXvy76AAoJEHb/MwWLVhi2lYkQAI/LDJTd/giN+MF4gT6DZ4Db
KZucD64daIHsBuKdvBWOTWhxGuFhCv1gGcfdJWZgTBWYow1yZx6HuxKQGfDGC1vh
rsQt26tP8RXcW9NiflvPovC++78bYMZhu6bzqVk6K9K7W8C8JjVgX2iU8lUa8XKw
Si1XKDN/jsXM+uyKrofVy/tYqDxYkQ9rDxVB8vpsJ6ezrN2WJiRfbTRnuMLE2BI6
bAUb9yoNWBoNMrP1YVwEAQQgzVshwsuwaEzF77khV/hmaJsTwOaomYdIfuHoRrqq
C02xBjvtzC3x79Tn71E29gfp+2/hK4E3fneQVRYO+3cShbcP8TADwEVSWGwuqOoM
ANuE6m76rIaN3peTwpXIHOFEDDjV56mj+60jkErse4yMbwMC2htiLWzssP1AklcD
y6/RpIoJLldhSJ+1KUjeAskCRozix2RTtyRveNK6ohD+BVRr6R3sfP9Y47RyIU36
6cPOowJICw0T3IkmD8HUn+cY0di7KuaopMu89hTdyOtugFSuOFVHBVFjdSo/kkjV
hgGExNuijnM/ts+vEVBB3UH7er3odyz7kTfPggr+pESZk2Jee4QMUQOlFMYgt9pW
ZIBwiDtf1N0+1Dk/E7aJxQvThW80xirWgg5ZuzCeyVstwEjgKX728cy/Qa7g2WIk
Zoe/WK1OI1qnr21ciAKg
=bAj5
-----END PGP SIGNATURE-----
