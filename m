Received: (qmail 9494 invoked by uid 550); 7 Apr 2025 14:34:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7576 invoked from network); 7 Apr 2025 13:15:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=openeuler-sh.20200927.dkim.feishu.cn; t=1744031728;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=wP68Ua1+9HE9Z32j6JnP7wii0PWIROs5LI6OUVVksQY=;
 b=ayy/N1rvi65evX0Ve5FjKXRD/TM9TFJlNji9Y2o55mQKf1hBhdDtWZQhef0+drt4m9fpnH
 ha4ADntpk4E681iwjH3WH3oa1xbeDRkhzTwVi7zZQWAEZEu0D+aU6zpaSDFJelvTX/hdO8
 zuA4qsoNlUX//TcGBFlFzFRBYlkmCyA/hpYEwpjI9T076+DVa21J7ECADDI5VhCC4abT5M
 lytvjwVbyNdY8VHJBm15UbpgCGgjlulHlX+cKdyPsUAQ08NiDhqr2Av7VL0hLiYhTwn9Ma
 9/z0Vxu/PCs++6ZU8J0kK9hFBMVYFwKmEAjv/gjcvDtXz5HyjQtSiYuY473gsQ==
X-Lms-Return-Path: <lba+167f3cfee+d76408+lists.openwall.com+liyajie@openeuler.sh>
Content-Type: multipart/alternative;
 boundary=250c5cb909781d6173a6261a0d47a1ff27ce7ef2e4c8761de19d1bbacfe2
Date: Mon, 07 Apr 2025 21:15:25 +0800
Message-Id: <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: =?utf-8?q?=E6=9D=8E=E4=BA=9A=E6=9D=B0?= <liyajie@openeuler.sh>
Mime-Version: 1.0
Subject: [oss-security] CVE-2025-31344: giflib: The giflib open-source component has a buffer overflow vulnerability.

--250c5cb909781d6173a6261a0d47a1ff27ce7ef2e4c8761de19d1bbacfe2
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

Affected Versions:
- giflib 5.2.2 and below

Description:
In the function DumpScreen2RGB of the giflib software, an attempt is made to access the color map through ColorMapEntry. The size of ColorMap is 6 bytes (from 0x602000000030 to 0x602000000036). However, when accessing ColorMap->Colors[GifRow[j]], the value of GifRow[j] exceeds the actual number of colors stored. The address pointed to by ColorMapEntry, 0x602000000039, goes beyond the allocated memory range for color data. As a result, accessing ColorMapEntry->Red leads to out-of-bounds access, causing a heap-buffer-overflow.

Credits:
JiaXuan Song(m202372152@hust.edu.cn)
bale.cen(cenxianlong@huawei.com)

Best Regards,
Yajie Li


--250c5cb909781d6173a6261a0d47a1ff27ce7ef2e4c8761de19d1bbacfe2--
