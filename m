X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["933" "Sunday" "5" "February" "2017" "21:54:34" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1486328074.8813.2.camel@gmail.com>" "23" "[oss-security] Irssi 1.0.0 minor remote memory leak" nil nil nil "2" "2017020520:54:34" "[oss-security] Irssi 1.0.0 minor remote memory leak" (number mark "U       ailin.nemui@ Feb  5   23/933   " thread-indent "\"[oss-security] Irssi 1.0.0 minor remote memory leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21532 invoked by uid 550); 5 Feb 2017 21:13:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7836 invoked from network); 5 Feb 2017 20:54:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=XZquBCrQDalfGr3EW5yVWg14FFIxTUWPvCrG/G46srI=;
        b=lsezeVEBzUSwBB0+YjRC+MqcUzQyX1yxh822cwOVdJzTVJJeIFau/WRNyD0Yn/N14P
         mm4I9V0z8DzXIMMncEhGnfaqCONzlXvglaUJUjjlmWJHTOtcJTxEEevGYPfdFzSP+LYP
         SfhUqlyuJz/a+nSk9MpKDOq7KLbsW8z9pRQRbwIVyrJitWuYI3zuz3NlrYgX2ttUpX7M
         EttS6l4RhoS4hVEg9GIAQphq3GkSqLC2fgLhLiTuB0q6JzhVUcusU2AnJIJUaW3btZMc
         acoVfB6Z6AFQ6vRNOM2/98+O3ABM56ie+cDpE12WeDF+dPqegy0ew08oZHKKb7IGOLkX
         yK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=XZquBCrQDalfGr3EW5yVWg14FFIxTUWPvCrG/G46srI=;
        b=T06MVP/pcVM10VyZzMrOyfl4CYSHZ/6Fq7t6fD4B5HlWkxWepLTqmdQ32qN4luic0h
         69IXcgwK7b18haVkNinKEhr3tZrmiG5eC8MhLTGmrOhVAH9jllVTx5vl0xpVeoMRC39v
         BKLzkoS/ii/zCgrd20G9wirtsk8lpPBg630T6lN19DmFpS1IoUeFAln+S5HIJFPShJCK
         9bqSTOL0f29I/U4nhiXrECX+aq5qQx1eDICEPVkYfvzAIPWqewFf1Yg6WGJ1YIUZVmnV
         Qx3Eyv+cGD4FoVHFzY0o93GQhIe7S3Dw2VvG1tJDFj+lUo2X4iaX836N+t15JYaSNuWA
         NBpw==
X-Gm-Message-State: AIkVDXJXNWIAsOgv8OuY+PDK2MH5W8cpH8lWp9XpWtTI7l78KIltHtxl7AraE6xxHnH7CA==
X-Received: by 10.223.176.175 with SMTP id i44mr6548560wra.3.1486328077794;
        Sun, 05 Feb 2017 12:54:37 -0800 (PST)
Message-ID: <1486328074.8813.2.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Sun, 05 Feb 2017 21:54:34 +0100
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.4 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Irssi 1.0.0 minor remote memory leak

Hi,

Joseph Bisch has detected a remote memory leak in some cases where a
hostile server would send certain incomplete SASL replies. According to
his calculations, the server would need to send 13 times the amount of
memory it wants to leak. The issue is a missing free of the base64
data. Please advise whether that issue needs a CVE?  

Patch: https://github.com/irssi/irssi/commit/19c51789967a2f63da033e60f6
ef08848b9cd144

Furthermore, Hanno Böck found the issue of a missing NULL sentinel when
initialising Perl, which crashes under ASan. Since this happens only on
boot and is not exposed to the net, we have no reason to believe that
there is any issue here. Also, that bug has been around since the
inception of Perl scripting module.

Patch: https://github.com/irssi/irssi/pull/619/commits/677fb1f55ca52d0e
43c93f7d8361d333ff5bffd6

In any case, those issues have been addressed in Irssi 1.0.1

Thanks for your attention,
