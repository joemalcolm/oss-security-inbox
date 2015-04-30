X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1579" "Thursday" "30" "April" "2015" "00:54:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150430045453.A4BC642E0BA@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE request: Perl XML::LibXML" nil nil nil "4" "2015043004:54:53" "[oss-security] Re: CVE request: Perl XML::LibXML" (number mark "        cve-assign@m Apr 30   44/1579  " thread-indent "\"[oss-security] Re: CVE request: Perl XML::LibXML\"\n") "<8BB9CA6B6B0D854E91889283C9B54C75DAF38EAB@xing-exchsvr04.xing.hh>" ("<8BB9CA6B6B0D854E91889283C9B54C75DAF38EAB@xing-exchsvr04.xing.hh>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14163 invoked by uid 550); 30 Apr 2015 04:55:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14145 invoked from network); 30 Apr 2015 04:55:05 -0000
In-Reply-To: <8BB9CA6B6B0D854E91889283C9B54C75DAF38EAB@xing-exchsvr04.xing.hh>
Message-Id: <20150430045453.A4BC642E0BA@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 30 Apr 2015 00:54:53 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Perl XML::LibXML
To: tilmann.haak@xing.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> XEE vulnerability in Perl's XML::LibXML
> 
> The output of XEE-XML-LibXML-demo.pl should not contain external
> entities, but "expand_entities" is ignored.
> 
> Using "$XML_DOC = XML::LibXML->load_xml" works as documented, using 
> $parser = XML::LibXML->new and $XML_DOC = $parser->load_xml does not.
> 
> The vulnerability is fixed in version 2.0119.
> 
> https://bitbucket.org/shlomif/perl-xml-libxml/commits/5962fd067580767777e94640b129ae8930a68a30
> 
> http://cpansearch.perl.org/src/SHLOMIF/XML-LibXML-2.0119/Changes

> LibXML.pm
> 
> $new->{XML_LIBXML_PARSER_OPTIONS} = $self->{XML_LIBXML_PARSER_OPTIONS};

> 2.0119  2015-04-23
>     - Preserve unset options after a _clone() call (e.g: in load_xml()).
>         - This caused expand_entities(0) to not be preserved/etc.
>         - Thanks to Tilmann Haak from xing.com for the report.

Use CVE-2015-3451.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVQbTrAAoJEKllVAevmvmsNSwIAIDOfW0/Xl/RNoF0HcUmeheL
U18aIX75+PcsFCkL01Zc25JgpYEjXfVqyH0reFrmOM2vzK2k92VKN86k8S83bEYJ
/V81+C0iBNBe/mgk2Eg01lbtlrZEpODIr1peYjZjQ1cx6rLGhgYlMrQrblRXkhFn
MJ6Hko+TbzDc8rUEpw9vgBFgmrhsXIq+/OA6xuBrafv6aBp43TDreX97/UYZtW7G
QERMz2mHf3rYLv58MlR8IpZOrs/EkV4O/KuA3g0RahiuQjArXX0BCHr4Qo+rEnDd
HxshKFuuvr19yTNO2oJiWc/n0qi/4exQWkgBZXMkgz9FWsX8AxuMkk+onfnA+mw=
=ECuO
-----END PGP SIGNATURE-----
