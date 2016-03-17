X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Thursday" "17" "March" "2016" "13:29:37" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQkwhYxJM=cugtjrzpwW0_aVn=QyRpCbuJrVqTDJyGjag@mail.gmail.com>" "19" "[oss-security] [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans" "^Date:" nil nil "3" "2016031716:29:37" "[oss-security] [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans" (number mark "        gustavo.grie Mar 17   19/593   " thread-indent "\"[oss-security] [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29939 invoked by uid 550); 17 Mar 2016 16:29:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29892 invoked from network); 17 Mar 2016 16:29:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=DEGgliwk+W2bbSI6yve7wPcGf1pF2vbh4x/iqBXR2/I=;
        b=PyskCdE86WzU6JujREt898FMFOM8NsIeBAOHa9XZcbFn/75noDZUET3ey0Te3ZeoRD
         cJAffocXulYg9dv3Ka4To48F9O3o40Ed4bm4VQJdHfXWQs7v2yNRC361Pq+gcELKGReh
         T97dKjM087RT2H8bqoxFeNGkmYU41Gtg9Hx+eYbrHolIism+aE/Sa7DxxJLCr5Nuikgv
         vtYwZDF+K7MUMzkDSejfYnGMCTr261X5r4mySsXlU4Zzqs9jdgzcCMNUI59OFGuBabaL
         aqZb51aZBJmSE5BTvgIcNOBBJvQcc7zByuh/3jj69IYsEoHGBtLpw9LOTmVLyiyf3x0M
         5fIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=DEGgliwk+W2bbSI6yve7wPcGf1pF2vbh4x/iqBXR2/I=;
        b=I3erMp7AyweD3WAdgXiazmWyqedB6myiC4jS892CG8f1AUIYDmxuwQM/FOD2fPuu23
         2UYtzmGhA9nKkIKpORm9K/LkMYaWG1UbA5Mp2piuc5sk8ezZ8+SAJXZCY97eFPD2ZucF
         993yEH4Axhlvld1afF6ZbPG3sEQFcDZ5ilYXtfkuU9rxUI+Ys8L/TEiMDZBUhApKxFhw
         imK8qey9O4yCWWQXkBTQYam6G09t3YAOx+s7zWxWRt+YIMhnU6S/9BiHOoZKbnIevGcW
         PYfNAd7EBTAcVC1746vZdTZzP3X9nE5K7dpI4n74CzXHDVqzN6IOEM9rq32WdoTcvKAk
         jfeQ==
X-Gm-Message-State: AD7BkJIeCDVKbiW5TyOR0gKM94SVyErBJX22d4WZUT09zF6kSEr8FiJ2vkVX7W7auI7fdfi5E629MfiZepBLAQ==
MIME-Version: 1.0
X-Received: by 10.25.79.16 with SMTP id d16mr3308561lfb.73.1458232177793; Thu,
 17 Mar 2016 09:29:37 -0700 (PDT)
Message-ID: <CACn5sdQkwhYxJM=cugtjrzpwW0_aVn=QyRpCbuJrVqTDJyGjag@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114196b4f51ea3052e41224b
Date: Thu, 17 Mar 2016 13:29:37 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans
To: oss-security@lists.openwall.com

--001a114196b4f51ea3052e41224b
Content-Type: text/plain; charset=UTF-8

Hi,

There is an out-of-bounds read in _fill_xrgb32_lerp_opaque_spans in cairo
(crashing software that parses and renderizes a svg, for instance).
Fortunately, this vulnerability was fixed in the 1.14.2 release (
https://mail.gnome.org/archives/gnome-announce-list/2015-March/msg00047.html).
The patch is available here:

https://cgit.freedesktop.org/cairo/patch/src/cairo-image-compositor.c?id=5c82d91a5e15d29b1489dcb413b24ee7fdf59934

Please assign a CVE to this issue.

Regards,
Gus.

--001a114196b4f51ea3052e41224b--
