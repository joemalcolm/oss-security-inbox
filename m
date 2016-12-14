X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["439" "Wednesday" "14" "December" "2016" "15:48:22" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161214144822.cfn2zv4s2bdlbdvi@eldamar.local>" "15" "[oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature verification" nil nil nil "12" "2016121414:48:22" "[oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature verification" (number mark "U       carnil@debia Dec 14   15/439   " thread-indent "\"[oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature verification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10192 invoked by uid 550); 14 Dec 2016 14:48:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10167 invoked from network); 14 Dec 2016 14:48:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6VWiP2PRfxv5ZVZ73XsWEi1SRQA5k0mROSHsuppVLM8=;
        b=GDGjKEqLt8E7S3f1lRx0L5ArZPwoLqmz27TtmGhpt7ogl3PRJUgOh7hIqnZkxeOswt
         wutI/qfwT9clsRt/PWvYjoOI6Har7iCYqePXh5xj8Te17hDQZY22nZB9Y/ve02Rkyoeh
         hp4/ZxXixOV8UCuv4c8mfXYVSK7ojb3NwLRkR8OYxerWJvuZi3/Vr0xO52B264PAgO7V
         +PlBrjjyuE7ZC5zWvbY8khWbk2onOXLFq1s/Yf25CQ3UibySnNLVQ80X8xiZVsMchnoI
         x6oJTZJyYhsRJALPBRYLONgfbF33EfO6O3gCgmgbkj/XNiOchUKR9uxUv+ATpxg9DBSW
         tG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=6VWiP2PRfxv5ZVZ73XsWEi1SRQA5k0mROSHsuppVLM8=;
        b=ZaJynJe/3uX9DBPM/KTFy6lnr77RMNIr0RWfSRh2ar+SEvwTY3BuxMx2Zwfszvxjtx
         UeNWD0DnImBDNRPqwK29m19CxtEXXsJazGllz3zfU9csQ4VVqRQOiYA2ghQL517Upq30
         6WwbOP8HJRJVdssOmb9/ugDWon+DG5vTN/uJXTm4N+CYpOvtxoqiChJc9rr6aCwgKwi5
         bc6AzeDlw4EoQzU0y6w+kPm19ibpfy4oGZM5NRmRFsL6RTzOl15gKaC4a6vIHSye3Xkk
         iRb7QIYWkv0YMZD/fLodcfCn1u4xcN88F/Mv9l7wgGJNtyGu72ktEIa0IRVYBuvXbyXr
         ODew==
X-Gm-Message-State: AKaTC004tcmd6eRVdIOZLlWjNL1QijYDCpubaE9meA0Dx6v1/UjIHftsAlsKImC50Eo0GA==
X-Received: by 10.28.157.137 with SMTP id g131mr7232508wme.29.1481726904460;
        Wed, 14 Dec 2016 06:48:24 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 14 Dec 2016 15:48:22 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161214144822.cfn2zv4s2bdlbdvi@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature
 verification

Hi

SimpleSAMLphp has released (another) update fixing an incorrect
signature verification issue (different from SSPSA 201612-01 /
CVE-2016-9814). It affects versions of SimpeSAMLphp before 1.14.11.

Upstream advisory: https://simplesamlphp.org/security/201612-02

References:
https://github.com/simplesamlphp/simplesamlphp/commit/a2326d75dd14accaac162dd2cb30aaefcc1f9205

Could you please assign a CVE for this issue?

Regards,
Salvatore
