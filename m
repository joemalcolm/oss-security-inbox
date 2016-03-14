X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["176" "Monday" "14" "March" "2016" "11:19:29" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwRWuPyzunFn_oB+Azu+dh+TPxZap-UJL41aniG4to_neA@mail.gmail.com>" "5" "[oss-security] CVE request" "^Date:" nil nil "3" "2016031407:19:29" "[oss-security] CVE request" (number mark "        loganaden@gm Mar 14    5/176   " thread-indent "\"[oss-security] CVE request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16037 invoked by uid 550); 14 Mar 2016 07:19:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16015 invoked from network); 14 Mar 2016 07:19:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=EusBxzD0ohv9Kq1zf0i1BXwH2RK1kiQsH3EJX5lYMvQ=;
        b=IQfOV/NTeiTDifI/PFRdgYcaudSLFaQEtDDUJNvLgxlhAAWce1wgFEb1hryOFtO3qQ
         /guSVASH9AYlRzuG6nHZd+w1DnvfaSauRhLM+vSAZMEaXgZOQkHM3FSac4ybfKMQpGZz
         R3eZ/NwPfQTxE9NTsWghj5ryMbP9dUxJHiKizZ/XDDE0hMASZHubpjeCNuC8URKLE52p
         +4ysdv27xdXuOJWhDOBB4wTeqnqDoqsTtLOOg8++H5WwDYRSoQwazH9B9Sa5Ce0ON1LC
         TfYQURs3Wbk2xAcQZnRWO9G4CodkNP5IeLOv9kmdEmiFZ2m8GaHucwFk39rQZggMpmxB
         4H4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=EusBxzD0ohv9Kq1zf0i1BXwH2RK1kiQsH3EJX5lYMvQ=;
        b=ieyi/kPxgsiIwUoM/DFmrWgUUc8mHbG30ZTsBM7Q5uvIaXezRBEmH/9uzYNMee0/Ea
         vnDv+1nIu4gSS17nzAEQHdX+2raYU7gAnNyPlo+OG6MeEebDBXjYr8uuM0y0ePgiPBtw
         nkQKawnnKjt7yOkh1DD2xhdULj0d9B33nDjZ32oXfGvtq43gBJzp+XZdq1zKUGyBMAms
         3+vA1R+9IP3uUNd0aBUF0ROnkn1CwzvPRfzrKlLRvxLfGfj9zBiSv3FCRf3DQeVY++TH
         yTIt3Wy7ZEbTcpDEY7TbGJOz88MGFo2z7OpCJGg9ghEeNyQkmh4QE8q/Udo3S1V0/TLQ
         WT6g==
X-Gm-Message-State: AD7BkJJ+Cn3ycSGL5GbsV/OuB09r4AX6U+I+ZvhiHvT/l/wRay7TqvOzOR8dJdiM0v2rXuOM28LH0CxB7L64xw==
MIME-Version: 1.0
X-Received: by 10.98.74.17 with SMTP id x17mr27897258pfa.14.1457939969553;
 Mon, 14 Mar 2016 00:19:29 -0700 (PDT)
Message-ID: <CAOp4FwRWuPyzunFn_oB+Azu+dh+TPxZap-UJL41aniG4to_neA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 14 Mar 2016 11:19:29 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request
To: oss-security@lists.openwall.com

Hi guys,

Is there a CVE assigned to this yet ?

https://guidovranken.wordpress.com/2016/03/01/public-disclosure-malformed-private-keys-lead-to-heap-corruption-in-b2i_pvk_bio/
