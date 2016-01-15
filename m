X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4221" "Friday" "15" "January" "2016" "10:34:40" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty33aP09VUvRTYncYLOt0ZFNRBw4-PJMau93s7R9SO9H9w@mail.gmail.com>" "104" "Re: [oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Cc:" nil nil "1" "2016011517:34:40" "[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        kseifried@re Jan 15  104/4221  " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160115171016.57F5F332003@smtpvbsrv1.mitre.org>" ("<1452866613.15013.86.camel@debian.org>" "<20160115171016.57F5F332003@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19644 invoked by uid 550); 15 Jan 2016 17:34:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19612 invoked from network); 15 Jan 2016 17:34:53 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=psB4VbIC0Ji2m5Nrif86M3L8ezd6lq7cHHAdvbiTIVs=;
        b=OhNYytwWAw+xvXXqf9ha3cVtEtVEcDL1Tlqr+y4OVIE7pZIO55cZ6RLSdVUzex2AD6
         EMRgZD/9ICbb61xDJc0RGmPo0L8w9RCOiSpsVOTtPbO3RQ9bLbAdKe1vuP7i9KyKuThZ
         TvGfFFo1KvahC8XCG/DXiRceeYs/e0ZvW8Lrqia9+HbUgOlvcr9K9gEO3X+P+WVvkYUR
         oZxtF6ULjAIk89LeI15SxRZ6GbDyYTX8GwpbyVBZZfmvuVVPHe/Q1OEOZmHjk3NlLkAA
         qWxJuaIks+rafDFMC71a/3PQN2xgIMUUn4tkA5k9ACYwZh1WySI+NLC8TXG1KQ9qaAZ9
         iWRg==
X-Gm-Message-State: ALoCoQln7AzF3pkUH28F/7+rvgZhzANB/K2g7X4aiAK5bN0RGXHQD9w4mfRrw6zwFRpDT3X30n/8zcB3sb2dEtmRrC1AQO7TsLPsC2ZVXBO0z2XNHubbSqU=
MIME-Version: 1.0
X-Received: by 10.13.206.2 with SMTP id q2mr9062786ywd.76.1452879281004; Fri,
 15 Jan 2016 09:34:41 -0800 (PST)
In-Reply-To: <20160115171016.57F5F332003@smtpvbsrv1.mitre.org>
References: <1452866613.15013.86.camel@debian.org>
	<20160115171016.57F5F332003@smtpvbsrv1.mitre.org>
Message-ID: <CANO=Ty33aP09VUvRTYncYLOt0ZFNRBw4-PJMau93s7R9SO9H9w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114da67e726086052962d1ce
Cc: corsac@debian.org, CVE ID Requests <cve-assign@mitre.org>
Date: Fri, 15 Jan 2016 10:34:40 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security <oss-security@lists.openwall.com>

--001a114da67e726086052962d1ce
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 15, 2016 at 10:10 AM, <cve-assign@mitre.org> wrote:
>
> >> eliminate fallback from untrusted X11 forwarding to trusted forwarding
> >> when the X server disables the SECURITY extension; Reported by Thomas
> >> Hoger
>
> MITRE is not assigning a CVE ID for
> ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c at this time. First, the
> (misspelled) reporter name suggests that the issue might have already
> had a CVE ID assigned by Red Hat before the issue became public. Also,
> http://www.openssh.com/txt/release-7.1p2 does not announce this as a
> security fix. Finally, the wording suggests that it could possibly be
> an interoperability fix, not a security fix.
>

This issue is public on our BZ:

https://bugzilla.redhat.com/show_bug.cgi?id=1298741

It was discovered that OpenSSH client did not correctly handle
situations when untrusted X11 forwarding was requested and generation
of the untrusted authentication cookie failed.  The ssh client
continued by generating fake authentication cookie and allowed remote
X clients to connect the local X server.  The decision if client
connection was accepted was delegated to the X server which, depending
on its configuration, could allow clients to open trusted X
connection.  This would lead to remote X clients having more
privileged access to the local X server than intended.

This problem can occur when X server does not include or enable X
Security extension (for X.org X server, this extension is not compiled
in by default since 2007) and when it has authentication methods
besides MIT cookies enabled (e.g. localuser authentication allowing
all X connections from a local user who owns the X session).

Both of these conditions are satisfied on Red Hat Enterprise Linux 7
and current Fedora versions.  The X server does not have X Security
extension compiled in and 'xhost +si:localuser:`id -un`' is run from
the xinit scripts.  Therefore remote X clients are granted trusted
access to the local X server when 'ssh -X' is used, as if 'ssh -Y' was
actually used.

The X server on Red Hat Enterprise Linux 6 includes X Security
extension (as of RHSA-2013:1620 -
http://rhn.redhat.com/errata/RHSA-2013-1620.html - which was released
as part of Red Hat Enterprise Linux 6.5) and hence does not fall back
to the use of fake authentication cookie.

This issue was corrected upstream in version 7.1p2:
http://www.openssh.com/txt/release-7.1p2

Upstream commit:
https://anongit.mindrot.org/openssh.git/commit/?id=ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c

which needs to be applied after:
https://anongit.mindrot.org/openssh.git/commit/?id=f98a09cacff7baad8748c9aa217afd155a4d493f

=============

We reported it upstream but we did NOT assign a CVE to this issue (I
think because we're not affected it was going to be left to upstream).
This issue does appear to need a CVE, however since it is public now
I'll leave that up to Mitre.



>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJWmSeMAAoJEL54rhJi8gl5QX4P/A53KsJzi3RcvrjKkL/noIW1
> aIe6dGR+F1ORULFbUxUUsNBCk9Kbn4wh5ILJG4NKrMbf96D0Fhc9HHC9PMR5/E4y
> tQdwDLwqpn57k+ma/tiWnO4BewPvu6F67jITus5SPYJHVs6yruGJCZCmxfD8rIjd
> Y2Of21fkCmQTz86EQ0OBHmTZGbme63xP9FEEqS/AZDKmDfb/6HWeFpHf9hvoU/sj
> PDXoUL72veUt/w44qeQCl0nIFEw+c3bkH10lnsyJPXUk0n50fX8+cibt/jVthLZP
> xR349ILvgIHCWvLCjIwUxsH14+01h7n5Bpm/ydwYzCP1asZ5bsu/xkcVmzU0LHKd
> cAlrBTCWurKappKLd1YlXiTtm+WgvGs6zLhjxacDOFm8HldR9Hkul5ppKLRdEHmR
> Y4tcP43C7O+LiTsEoLt9RLn8jNfpYu1Ps3cubvz8Q3H3ckTavlR1ovu/QY/h4ZY+
> EeG6yELDdSwt8a993YwPx5Eex+T5hCZFxt8sMWVAUY5CS6nmYoI3k1JhFZy4W3tD
> fmKZUFzbdHjpJmDDuJIjKiwQqZqGt8yBRSutz7JAo2eCyQ78JYKa6MaFz4Db/V/f
> SX/wBfSSp+sTi/HbN51eAvxn9KejXGOYeCYs/sKpKaORSEuxSsIB6VrlvpHAqsZG
> hPVegxqsnYuZ01x6cvP6
> =x5zR
> -----END PGP SIGNATURE-----
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da67e726086052962d1ce--
