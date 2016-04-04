X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4272" "Monday" "4" "April" "2016" "06:50:34" "-0500" "David Snopek" "dsnopek@gmail.com" "<CADca9RfdnxhvJGaTNvvTMS4WM7Anv4L0Sj0onrPyuKaQrhzVjQ@mail.gmail.com>" "104" "[oss-security] Re: [security] CVE requests for Drupal contributed modules (from 2016-009 to 2016-014)" "^Cc:" nil nil "4" "2016040411:50:34" "[oss-security] Re: [security] CVE requests for Drupal contributed modules (from 2016-009 to 2016-014)" (number mark "        dsnopek@gmai Apr  4  104/4272  " thread-indent "\"[oss-security] Re: [security] CVE requests for Drupal contributed modules (from 2016-009 to 2016-014)\"\n") "<20160317152301.48ABE6C0675@smtpvmsrv1.mitre.org>" ("<CAMYtjArgn4pT2z2gVpwvQh7L40d11Q-A47fJtPboi27b+4BX-A@mail.gmail.com>" "<20160317152301.48ABE6C0675@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24474 invoked by uid 550); 4 Apr 2016 16:01:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17821 invoked from network); 4 Apr 2016 11:50:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=lSEJcqSdOlyAGznlBk+sjKEXD1xW8jaaCYatxcpxm14=;
        b=l1Bq4MdoJZOyrxkdakOfNIkkJfVzeOjpb6oQAP/fSOT4/V6+XgBRnfuSP8nd/GRHQo
         eTeUmBPvPvqKIypARD6jW/c0GhyXMBNfVLLyK7FLb7JWcKwL/DwTkvET0uUrrz58jbfH
         B+L9EghLp9ijQ1ILqCi1lLXJ+Il4I2SZI9H/7nl/iwqJVrROUstLAQznWX0rrvMR6hZl
         piIGCyENS3qRF/Gp0/8pVYEq7m9tLDsPzA3Noz2GlxKT6H/uWLf5ZDn/h56QZCHeytzB
         4dqCGCfzBAeyyqfMODszT3kzJaCLsyhvRGAx/qQIPA+cyYq2MVJnls2UsVpL4yuxpSN0
         4bxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=lSEJcqSdOlyAGznlBk+sjKEXD1xW8jaaCYatxcpxm14=;
        b=BcjmWEDUkMjKccQ39kMi9e0cScrLL0lfnowQTkMJBF1QaupgfgBIhhgcNpQdtxSR8m
         wlgLxm9dW9XNWTAc5gNiJD0FlWoBmz57px4KZx0kFW+m+EQtY259vcZ3X0heQsFpl1GY
         d1NZARceiiGONQXCFEYS7UVOqZWNB3bf9WFP/hUnbNdQluWrK/TkaKyh4gL/1wCV8qgC
         lGzoPD9kUmNB9JE1YsCihBFjvyqtl21z+O7UoOkHjuJEm5PAWoM+K3h0+y+7Qvasv8lT
         oQauXybaAJ1axgFxJxOEJoAt+1+kBP/tsv6mW1tzR7tvv7Y+qsVSuNRLG1iX1QGButbY
         fxZQ==
X-Gm-Message-State: AD7BkJKqpYCdJV60RQKNJi8mEwiQNuR2OXgBDU/iBmCB3RlaXiRU/OhzFprqb5+WAD0he72RSQLAC7tyjhArzg==
MIME-Version: 1.0
X-Received: by 10.50.41.72 with SMTP id d8mr9296032igl.36.1459770634308; Mon,
 04 Apr 2016 04:50:34 -0700 (PDT)
In-Reply-To: <20160317152301.48ABE6C0675@smtpvmsrv1.mitre.org>
References: <CAMYtjArgn4pT2z2gVpwvQh7L40d11Q-A47fJtPboi27b+4BX-A@mail.gmail.com>
	<20160317152301.48ABE6C0675@smtpvmsrv1.mitre.org>
Message-ID: <CADca9RfdnxhvJGaTNvvTMS4WM7Anv4L0Sj0onrPyuKaQrhzVjQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e011768ef1cb877052fa756b6
Cc: Security Team <security@drupal.org>, oss-security@lists.openwall.com
Date: Mon, 4 Apr 2016 06:50:34 -0500
From: David Snopek <dsnopek@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [security] CVE requests for Drupal contributed modules (from
 2016-009 to 2016-014)
To: cve-assign@mitre.org

--089e011768ef1cb877052fa756b6
Content-Type: text/plain; charset=UTF-8

Hi,

Just as an FYI, there is a small team of vendors who are carrying on
Long-Term Support of Drupal 6 and some of its contrib modules:

http://drupal.org/project/d6lts

This affects one of the security issues you mentioned, in that the LTS
vendors ported the fix to the Drupal 6 version of Prepopulate and made an
unofficial release that contains it:

https://github.com/d6lts/prepopulate/releases/tag/6.x-2.3

I'm not sure if this matters to you, as these are completely unofficial
releases done by a group that isn't the same as the Drupal Security Team or
the upstream maintainers, but the ported patches and releases are (and will
be) publicly available. If you'd like, we can let you know about future
releases? Or if not. please feel free to ignore this note. :-)

Thanks,
David.

2016-03-17 10:23 GMT-05:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > Prepopulate - Access Bypass - SA-CONTRIB-2016-009
> > https://www.drupal.org/node/2679503
>
> >> The Prepopulate module does not adequately prevent a user from
> >> overwriting arbitrary parts of $_REQUEST. It also does not prevent
> >> pre-populating certain fields that are not displayed or manipulating
> >> markup fields to alter elements of the user interface.
>
> >> Versions affected
>
> >>    Prepopulate 7.x-2.x versions prior to 7.x-2.1.
>
> >>>
> http://cgit.drupalcode.org/prepopulate/commit/prepopulate.module?id=16cdb63cc3b256dd785e029ec17f92ddf80cc443
>
> Use CVE-2016-3187 for the issue associated with deleting the
> "parse_str(base64_decode($_REQUEST['pp']), $_REQUEST);" lines, and use
> CVE-2016-3188 for the issue associated with changing the value of
> $limited_types. (The 16cdb63cc3b256dd785e029ec17f92ddf80cc443 commit
> message does not seem closely related to the
> 16cdb63cc3b256dd785e029ec17f92ddf80cc443 code changes.)
>
> Our understanding is that the Prepopulate module was packaged in, for
> example, Fedora 23. The prepopulate-6.x-2.2.tar.gz file shipped in
> drupal6-prepopulate-2.2-4.fc23.src.rpm apparently does not have the
> 16cdb63cc3b256dd785e029ec17f92ddf80cc443 changes. Thus, we feel that
> the best available information is that CVE-2016-3187 and CVE-2016-3188
> affects or affected, at least, Fedora 23.
>
> (For example, see the
>
> http://fedora.mirror.lstn.net/releases/23/Everything/source/SRPMS/d/drupal6-prepopulate-2.2-4.fc23.src.rpm
> package file.)
>
> (We understand that Drupal 6 end-of-life was last month according to
> the https://www.drupal.org/drupal-6-eol post. We also understand that
>
> http://pkgs.fedoraproject.org/cgit/rpms/drupal6-prepopulate.git/commit?id=d77963c300289b6be29b5dc08d0662fc698068f4
> exists. However, drupal6-prepopulate-2.2-4.fc23 may still be in use on
> many Fedora 23 systems.)
>
> We may be sending a separate reply about the USASearch, Google
> Analytics Counter, Hubspot CTA, Node Notify, and Fieldable Panels
> Panes issues.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJW6srrAAoJEL54rhJi8gl5J/4P/0g7s1pjL7lsg4sc3vN41r6v
> +1i0ucO28tfGhM13QxqNfR1RqUZ3W40dlWz2Lum6NvudbkGZaY+Jzph4BT9RW1n2
> 80ruiuamYF3escBnWvssSdIjwl2ibwsKFzzjyrvArdcZpnI6pwGFWPKLbN4pGyoz
> WSi+Ow067aqeSJVonW98AlxF4udVTrQJQi1wmhiW0jOE+7zk1rAwkVUgLlWCDJLB
> dVnopSr/FN2ewTkkJrAfBSfqQBGe7XNrnYCzefdBv7JgAARzkPc1jJzdC8oy3AIL
> TiyDVo6O/fi4j4pd01TVUc8Yh7kGilDdk7BPyptH4KPrGG8yS8SmLY2WSoR3gpa8
> iBvw6o9X0HuXFo9IGrSBsd6LUt/+dYkqOH4JN2dxj9rxKlqv+4zlGHqM8mP/xGaw
> 4tCy7ekDTpEEQNSSzZDLtrDtaYbtHztC2EQ+fUp8iTmh1OKayWPGHNj/+unChR+q
> 0QqQt483QarClETgwUtVQCwqUBT90nS0RFvG5FKCAGRurfWXR0b0jXtQPmECZj6k
> wlJinmq4yAPfHVEjm1/5pGANAcihuLUxVdvpw8ZbsAJRSg2wEvxSCILb4Av+OaxF
> o5q0Nlekcn3FxKNz4hpr+ra5CWy7i/KDhjAuH6rarNMWA2sDLOM18TjyL9Pax0xy
> etw4zEaMsg3o2WgpI6qS
> =huG5
> -----END PGP SIGNATURE-----
> --
> [ Security | https://lists.drupal.org/mailman/listinfo/security ]
> [Security team mailing list management and scheduling is documented here |
> https://security.drupal.org/handling-list-emails]
>

--089e011768ef1cb877052fa756b6--
