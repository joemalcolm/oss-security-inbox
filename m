X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Thursday" "12" "November" "2015" "13:26:27" "-0500" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXctx4LcZLTkfhohX1iErjwPUJTA3EBDsvf=qAJwFYBFRqw@mail.gmail.com>" "20" "[oss-security] CVE request: libpng buffer overflow in png_set_PLTE" "^Date:" nil nil "11" "2015111218:26:27" "[oss-security] CVE request: libpng buffer overflow in png_set_PLTE" (number mark "        glennrp@gmai Nov 12   20/746   " thread-indent "\"[oss-security] CVE request: libpng buffer overflow in png_set_PLTE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18057 invoked by uid 550); 12 Nov 2015 18:30:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12075 invoked from network); 12 Nov 2015 18:26:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=9Msyo8/qR/tur+aJ1Bicf/9OhPeA1tNH5N2kWTc0VRg=;
        b=wLoedDrXBnmvpUg4hDHbdhis0FCw+GADEX78l5ZB54kzjk1/nXRuKSb4lfvdep5I3O
         xwTJfiK3WH18Cn49zAqPi9xzlUxJPe+v08jVwu57xYisd1LmrhtpxsV4GgN3J8i4udcU
         yKv8mZmUO7GkOUeG7cBlGm/m3YSmpl84UGoAFqKn6XYJBtCwwZsIEV21FB/afjQ+v6sn
         DeXeLXbNG/bekU0YQtDpMvj9N62lOThULjJNaEq55vhVkAq8fQTU/Vj4vraFULzrXglI
         3zColRaG/Z7wy21W7XuuIVggaSbtHT6W/kRmca48KO5q+TFToC6JSUG4wk1GSb9KWGQA
         GGQQ==
MIME-Version: 1.0
X-Received: by 10.55.33.40 with SMTP id h40mr17310065qkh.77.1447352787118;
 Thu, 12 Nov 2015 10:26:27 -0800 (PST)
Message-ID: <CA+PdXctx4LcZLTkfhohX1iErjwPUJTA3EBDsvf=qAJwFYBFRqw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140690cbdacd205245c1488
Date: Thu, 12 Nov 2015 13:26:27 -0500
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: libpng buffer overflow in png_set_PLTE
To: oss-security@lists.openwall.com

--001a1140690cbdacd205245c1488
Content-Type: text/plain; charset=UTF-8

I request a CVE for a vulnerability in libpng, all versions, in the
png_set_PLTE/png_get_PLTE functions.  These functions failed to check for
an out-of-range palette when reading or writing PNG files with a bit_depth
less than 8.  Some applications might read the bit depth from the IHDR
chunk and allocate memory for a 2^N entry palette, while libpng can return
a palette with up to 256 entries even when the bit depth is less than 8.

libpng versions 1.6.19, 1.5.24, 1.4.17, 1.2.54, and 1.0.64 were released
today (12 November 2015) to fix this vulnerability.  See
libpng.sourceforge.net

regards,

Glenn Randers-Pehrson
libpng custodian

--001a1140690cbdacd205245c1488--
