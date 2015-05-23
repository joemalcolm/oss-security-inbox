X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2054" "Saturday" "23" "May" "2015" "11:40:46" "+0000" "Nitin Venkatesh" "venkatesh.nitin@gmail.com" "<CAARZ5vqVxSgMZ+c+RwBBrwXN-xTNSSccj_Ggy3CeB1PQDgJPVw@mail.gmail.com>" "55" "[oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability" nil nil nil "5" "2015052311:40:46" "[oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability" (number mark "        venkatesh.ni May 23   55/2054  " thread-indent "\"[oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability\"\n") "<20150522190405.D4E026FC00C@smtpvmsrv1.mitre.org>" ("<CAARZ5vpRu9sgev=p9M+zbxagBjbGRWBHrA-yUO9a2V7vpyVfRA@mail.gmail.com>" "<20150522190405.D4E026FC00C@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15897 invoked by uid 550); 23 May 2015 11:43:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14011 invoked from network); 23 May 2015 11:40:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=kvR4yd9/2XHP/2U7CSjUSS2AocW7UrfcDJDUFf5EAPQ=;
        b=gSWv/CszIL+qRPQ+jaqD2TT9/dtIJmufqtOb+N+mNZsahF4Xxq4wEE2HW6yFiDpEQs
         zftX3fOq0zad6jSLG+fz5fEj1dwRSF4vo0G/8S+xkRujqxIuPe+lOI2QHMv/86PCmW96
         gXpXvseWe+CwuxHeAuEMKdy0Ydc+t8xMHUUuVfBAPoeMYvXAT5Da/hjwA7WaJYrQRELC
         lI1ga/4g8SUT7hpUYtKs3YEy9ZPgJofTA+KsmeNA2gxsdYLKrlyc+JRF3f32z4bKwNjA
         6Wa+9Y6OSdjzpkbjHPyRsVLtjxkt0RlMHOVVRo86neWKS3nUzRIz8un5E5LIh47ivthA
         uUzQ==
X-Received: by 10.42.85.147 with SMTP id q19mr14323313icl.96.1432381247338;
 Sat, 23 May 2015 04:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAARZ5vpRu9sgev=p9M+zbxagBjbGRWBHrA-yUO9a2V7vpyVfRA@mail.gmail.com>
 <20150522190405.D4E026FC00C@smtpvmsrv1.mitre.org>
In-Reply-To: <20150522190405.D4E026FC00C@smtpvmsrv1.mitre.org>
Message-ID: <CAARZ5vqVxSgMZ+c+RwBBrwXN-xTNSSccj_Ggy3CeB1PQDgJPVw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf30334a8b6e3ebf0516be3f25
Cc: oss-security@lists.openwall.com
Date: Sat, 23 May 2015 11:40:46 +0000
From: Nitin Venkatesh <venkatesh.nitin@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability
To: cve-assign@mitre.org

--20cf30334a8b6e3ebf0516be3f25
Content-Type: text/plain; charset=UTF-8

Hi team,

Thank you for CVE-2015-3904.

Just wanted to update that the developer has now bumped up the version
number and updated the changelog to reflect the changes. Please note that
the patched version now is v1.3 and the changelog can be found here -
https://wordpress.org/plugins/roomcloud/changelog/

On Sat, 23 May 2015 at 00:34 <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> > http://seclists.org/fulldisclosure/2015/May/40
> > https://plugins.trac.wordpress.org/changeset/1117499
>
> > # Affected Versions: Tested on v1.1 (revision @1115307)
> > # Fixed Version: v1.1 (revision @1117499)
>
> (The https://wordpress.org/plugins/roomcloud/changelog/ page does not
> currently list this issue. Note that a download labeled 1.1 could
> potentially be either a vulnerable version or a fixed version.)
>
> > Unsantized POST parameters are susceptible to XSS in the roomcloud.php
> file
> > viz., (1)pin, (2)start_day, (3)start_month, (4)start_year, (5)end_day,
> > (6)end_month, (7)end_year, (8)lang, (9)adults, (10)children
>
> The implication seems to be that potential hotel guests, who obviously
> do not have administrative access to the hotel web site, can make the
> POST request. Use CVE-2015-3904.
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>
> iQEcBAEBAgAGBQJVX30nAAoJEKllVAevmvms6Q8H/0pXtn2l5nEy3dTh1S3YH7xD
> capTFDit0z8L4SzFR4BrJx0YEpEgOujsZdLRZkJzZbT3gw3Sgk3H3sELl82DHu3Q
> oHx+K+Gg3MptO+yVinivPkWyKdGn63UxVKwCX58nU3JA7b3FHnxlyRiC/wihyxyx
> KBu0RZ+3gW9+jiJTyLs00SJ/NTAG+HjivhBbMqUP+suOvExhlnNgF1EUeB5LftGF
> LppAP17wYYKvy1m+upk+JdlmzBA4K7uxPpklkfSXdcQbOxN7GnNrBB31uzFrff88
> 6P8AMpwGJOscJ3VjTnI7XIyzyn2I9sWCd5y1FhIexyMse73rJt+aGjMQZGYKf/w=
> =WA80
> -----END PGP SIGNATURE-----
>

--20cf30334a8b6e3ebf0516be3f25--
