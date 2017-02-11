X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["762" "Saturday" "11" "February" "2017" "11:50:40" "+0200" "Eyal Itkin" "eyal.itkin@gmail.com" "<CAA=iMULG2UP6XV7voESqSE3gVOxvb4z+uYL_GoqLdETyVFpWcg@mail.gmail.com>" "25" "[oss-security] CVE publication request - CVE 2016-8636" nil nil nil "2" "2017021109:50:40" "[oss-security] CVE publication request - CVE 2016-8636" (number mark "U       eyal.itkin@g Feb 11   25/762   " thread-indent "\"[oss-security] CVE publication request - CVE 2016-8636\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23717 invoked by uid 550); 11 Feb 2017 09:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22437 invoked from network); 11 Feb 2017 09:50:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=IdVFSOFeCGTbJFRInckzfOpVHI4YiSimlB5Abs5wCI4=;
        b=nhwmRoOID45pcaRHyv0T8CucBn12n9x3hfJAGrvSJJafVuCTWUjLaCep5YThlDjtlF
         cMcljn6Ku08L59cHKJahkboMMtWBvCK2tWPw7JIiS33+YUszvDDNPRbITgSxErFDav3Y
         sbFkKunYu6bjpT7qHhFQJ5LOHjneQbTibpA8e0WqY+ONsX45sXWUNWv52nSdXngru17m
         t6aa7+BOGr5JDQi+gLYiAKTeurMzDKLFT9pTO2Bq87Z+MjAxygxGckOtQ+unculB96Pi
         6/Bys1YSS/7EjPoYYuRGjJa8Kzcxi1HT6AGS44peyLNTqIPQ/fIG5Hm6kVNpmFuurxB4
         4Vbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IdVFSOFeCGTbJFRInckzfOpVHI4YiSimlB5Abs5wCI4=;
        b=cesZbZFc6MR5LwvRGzNnHp0W0mgN3RcO9Q852E2OyCExgjdKWgcAf7iojbC+xRii/f
         iND2yzGYKlqzkAMUk19vNzARW69MbOFeQT1xXbPXrAvGmMxyzwPGQ7hvlw22FsTucBZB
         L+k4vDzrojvB6Uhq5HjvdbCBBVmZ6U9iufmJexu8zSV28eyQLNrArESjPsm4McVMwtek
         QYbhg7WwqzSHFfjZd2DwS11t3y5uTGpDqYb+ydjUe3D/Y16ag8IlroqTwSuNJflwdOkb
         qZdCtdJZ+JS0fimsiiYoitmbhc17qWXqM5Lfzq/Dha2KkNxF3HaLpIOfvLI/7bxbMviL
         h8Kg==
X-Gm-Message-State: AMke39mgWqxw1iGnGbSuRvfS9op1m7MKX3FcJboDT3MOr1q81GxHD6CplhGEcv9zUB255UISUsYLYaAEYRDVXw==
X-Received: by 10.25.154.2 with SMTP id c2mr4182735lfe.71.1486806640422; Sat,
 11 Feb 2017 01:50:40 -0800 (PST)
MIME-Version: 1.0
From: Eyal Itkin <eyal.itkin@gmail.com>
Date: Sat, 11 Feb 2017 11:50:40 +0200
Message-ID: <CAA=iMULG2UP6XV7voESqSE3gVOxvb4z+uYL_GoqLdETyVFpWcg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11401d6ca6f95e05483e25a3
Subject: [oss-security] CVE publication request - CVE 2016-8636

--001a11401d6ca6f95e05483e25a3
Content-Type: text/plain; charset=UTF-8

Hello,

The security patch was deployed 3 days ago in the official git repository
of linux, after the fix was reviewed and approved by me.
Therefore, CVE 2016-8636 can now be publicly disclosed.

Commit id of the mainline merge:
   647bf3d8a8e5777319da92af672289b2a6c4dc66

https://github.com/torvalds/linux/commit/647bf3d8a8e5777319da92af672289b2a6c4dc66

Public disclosure details in my security blog:

https://eyalitkin.wordpress.com/2017/02/11/cve-publication-cve-2016-8636/

P.S. The CVE id was received from the security team of ubuntu, which
directed me to publicly disclose it with the oss-security mailing list.

Thanks for your help,
Eyal Itkin.

--001a11401d6ca6f95e05483e25a3--
