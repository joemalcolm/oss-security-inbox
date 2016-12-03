X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["461" "Saturday" "3" "December" "2016" "09:20:09" "+0800" "Baozeng Ding" "sploving1@gmail.com" "<ed9a84ac-7e62-55d5-afa2-4afaab0c1613@gmail.com>" "14" "[oss-security] CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync" nil nil nil "12" "2016120301:20:09" "[oss-security] CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync" (number mark "U       sploving1@gm Dec  3   14/461   " thread-indent "\"[oss-security] CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24457 invoked by uid 550); 3 Dec 2016 01:20:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24432 invoked from network); 3 Dec 2016 01:20:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:cc:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=EeSEBVYr0pICN18OR+UbWrQbK+/duqgzyRaCPKisOgU=;
        b=vQA0LFTvamLEsKQ3LAJv/mOTU35GdTwkzd68UBKrdZjEXV8vaItl0wW0gGoW+Q+2pv
         nhJHomj2z6uXkieC5b5Nju9xAjqWfDYaa0oQTeayewes1tTi77aeZkmRcyQNZaMVm9F+
         CAX1Gxzqne6+SSWsEj4cGbK3FOCrR6+43DvsS+A2ovbRFtbTJxfJHH/thnX2jx1CNbhy
         E8f5zSoFMSB7Ur82ba8vklX85nnmrIEPkGfgZZcHFwdULUC4Ez3VGld0XQWzF1PtWjyZ
         irLT9VH0JMCAOUxjL6vGqvzwKwpV++DoASBCChvVllzffLYQ6iy4XYqeAOEjLS/+RYUV
         3w8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=EeSEBVYr0pICN18OR+UbWrQbK+/duqgzyRaCPKisOgU=;
        b=XK1eHRCp3rxYUTyD8y98QBDhTmdYVUyvjUEbDsI68hLbEx5BI0s7ko7ov+QNTSxK+d
         BkiILDXVFIelx4o+lWijdIpKis5uriSOzMZmLmZp/JDFS44kJciQgFLgWylKa0mijW7a
         uPZV/OY4waGmN2AK59cGUE8F98wG42kIkhffxH5Y0UOTmYlKGJGu1Fn64wE6VVxpKQmd
         L4fOxUSQT49YSg+ZvPM00ycGc7jVDQpKOlFz1Y6NfbudfA1yfA3GNYL1T//FOBOnYfx1
         /M6GJ52q37+QzPC2ojExXY1SLrWJnY90i+kb3pC322moaoMgLwP/lOpXQFja3zHv7vv+
         nvsw==
X-Gm-Message-State: AKaTC00zza5NbxH5F6qDoHNAh9Qi/s1wfhXiyykUcjtCT4PIeSG55KA3IzjvmQEf6vJs/g==
X-Received: by 10.157.37.195 with SMTP id q61mr27286501ota.195.1480728042054;
        Fri, 02 Dec 2016 17:20:42 -0800 (PST)
To: cve-assign@mitre.org, oss-security@lists.openwall.com
From: Baozeng Ding <sploving1@gmail.com>
Cc: tiwai@suse.de
Message-ID: <ed9a84ac-7e62-55d5-afa2-4afaab0c1613@gmail.com>
Date: Sat, 3 Dec 2016 09:20:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync

Hello all,
A use-after-free vulnerability was found in ALSA pcm layer, which allows local users to cause a denial of service, memory corruption or possibly other unspecified impact. 

Reference:
------------------
  --> https://patchwork.kernel.org/patch/8752621/

Fixed in upstream:
--------------------
  --> https://github.com/torvalds/linux/commit/3aa02cb664c5fb1042958c8d1aa8c35055a2ebc4

Could you please assign a CVE for this vulnerability? 

Thank you.
