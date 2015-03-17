X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1743" "Tuesday" "17" "March" "2015" "10:27:23" "+0100" "Luis Bernardo" "lbernardo@apache.org" "<CAO3yRHvB8KPvw-FA8qzwavMO5G-2Ru0yd8iBDhuy4DXXRhC6_g@mail.gmail.com>" "62" "[oss-security] [CVE-2015-0250] Apache Batik information disclosure vulnerability" nil nil nil "3" "2015031709:27:23" "[oss-security] [CVE-2015-0250] Apache Batik information disclosure vulnerability" (number mark "        lbernardo@ap Mar 17   62/1743  " thread-indent "\"[oss-security] [CVE-2015-0250] Apache Batik information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15473 invoked by uid 550); 17 Mar 2015 09:41:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7589 invoked from network); 17 Mar 2015 09:27:37 -0000
MIME-Version: 1.0
X-Received: by 10.55.31.32 with SMTP id f32mr68818270qkf.41.1426584443382;
 Tue, 17 Mar 2015 02:27:23 -0700 (PDT)
Message-ID: <CAO3yRHvB8KPvw-FA8qzwavMO5G-2Ru0yd8iBDhuy4DXXRhC6_g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147b0dcfd73f80511789208
Date: Tue, 17 Mar 2015 10:27:23 +0100
From: Luis Bernardo <lbernardo@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2015-0250] Apache Batik information disclosure vulnerability
To: "security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com, =?UTF-8?Q?Nicolas_Gr=C3=A9goire?= <nicolas.gregoire@agarri.fr>, 
	kschaller@ernw.de, batik-users@xmlgraphics.apache.org, 
	batik-dev@xmlgraphics.apache.org, general@xmlgraphics.apache.org

--001a1147b0dcfd73f80511789208
Content-Type: text/plain; charset=UTF-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1


CVE-2015-0250:
        Apache Batik information disclosure vulnerability


Severity:
        Medium


Vendor:
        The Apache Software Foundation


Versions Affected:
        Batik 1.0 - 1.7


Description:
        Files lying on the filesystem of the server which uses batik can
        be revealed to arbitrary users who send maliciously formed SVG
        files. The file types that can be shown depend on the user context
        in which the exploitable application is running. If the user is root
        a full compromise of the server--including confidential or sensitive
        files--would be possible.

        XXE can also be used to attack the availability of the server
        via denial of service as the references within a xml document
        can trivially trigger an amplification attack.


Mitigation:
        Users should upgrade to Batik 1.8+


Credit:
        This issue was independently reported by Nicolas Gregoire of AGARRI
        (www.agarri.fr) and Kevin Schaller of ERNW (www.ernw.de).

References:
        http://xmlgraphics.apache.org/security.html

Luis Bernardo

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQEcBAEBAgAGBQJVB++5AAoJEIIDaYnVa18X7LUH/0c9UNsa27D+lUdH0a+ADqWm
molgIssNAw4oUmZSzm4VKRhE3poG+d0WLhL2l5HpSJDBpOXLbE3txlYuiEHWibjf
Ho1ImstDLstsF3T933Gad8eseSU2GusFIqWbjnRVxdMwqK+en4EOXfNEFysofls8
zQk//K5s3nDog2YP272IZkQjfkyvwPF3v4pSzVSnIxcod7OffIMpqvQ4lFahq8H6
cG84RhmJTQ2oo4I4v/tb+jELgZSTvN5U+owzQejwuQxYaCgyK18Rzpi3bi5TiEy5
TpH5Bq5jT7cOqG2IUNSE7W1tk1JeNP0iuxBQN+yFZK0YAXpWHP9yXUd2fe1mu3Y=
=XBUb
-----END PGP SIGNATURE-----

--001a1147b0dcfd73f80511789208--
