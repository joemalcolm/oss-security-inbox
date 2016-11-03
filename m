X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1096" "Thursday" "3" "November" "2016" "17:58:14" "+0800" "redrain root" "rootredrain@gmail.com" "<CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>" "45" "[oss-security] CVE request:Lynx invalid URL parsing with '?'" "^Cc:" nil nil "11" "2016110309:58:14" "[oss-security] CVE request:Lynx invalid URL parsing with '?'" (number mark "        rootredrain@ Nov  3   45/1096  " thread-indent "\"[oss-security] CVE request:Lynx invalid URL parsing with '?'\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22010 invoked by uid 550); 3 Nov 2016 09:58:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21992 invoked from network); 3 Nov 2016 09:58:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=I/vMSH/MbaO4q1smOv5RGEzsFcSWiWBieArFTHBJ4AU=;
        b=JYGvZnZIzTK64ME5ImQwXDGSMRjG2gKxi3mFZVQYqDevMxmbte2L5UWAONyDVSzGZB
         Fkecgqai31dB3J2BOOLyB7sgBjSw0dWd+2yBoBtreN7qNWoi4ERVU7j0fnA+EcNGGwOF
         DuRN70HrW6Z4rQjKjLvmduZJvj50vQul3SsrSxouuRmBU+twrTaIyqxRhv5wDfFQ3uPu
         GQGVLaocw6gwgujhgHmC6bfg96RYoOOAuBIB/R2QN4mHg68KU8drkjSyOTmr0G/STvsa
         Tybzlvtg1Bt4dXn3MTxQVbRoCzgKfh2RWjaJsesD3bl/NhaHHDSOooo9dD1wRzslZ2w1
         s49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=I/vMSH/MbaO4q1smOv5RGEzsFcSWiWBieArFTHBJ4AU=;
        b=QoJIawwk/AMaAYzE0NuK4Gz1AzBQgwB2tWGUPj/SUgKF0tpPB9CmNxG+YlwGGWQioP
         8BUpPYShJcRSwNn5X9GMIYWJAAf9huOzfIxYb6nkPZCb6/gHTaMAEnwiNy93reQevKqE
         OIhNZbktm/KWcGOExpf2xb1CLZVARbdWEEGsan1Kq9jmY2w/mLtc8fvTZTJH8OgNocg2
         tABDPoD2bRmT8A3Q/7ojIO7owtvPXj3dErywAGy1e8COWN2+3JyXPNJhUcj+vfGLwNfg
         1TDDhSnzZfxaGRgnmwh5eytVxxNRnsgaId4kc0DjLi7gtceh9b15VJ1FxxOuYJzgRmci
         VuyQ==
X-Gm-Message-State: ABUngvflSvL+Q0IXeaTLizsXO3xzcFwXuKtFN1yrVMtFfzNyOn/YY26JIhKZ56tlqtQVDLIEUhyLRczVJ4Y7oQ==
X-Received: by 10.129.36.4 with SMTP id k4mr7654697ywk.162.1478167094376; Thu,
 03 Nov 2016 02:58:14 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11427e24943fbe0540629842
Cc: cve-assign@mitre.org
Date: Thu, 3 Nov 2016 17:58:14 +0800
From: redrain root <rootredrain@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request:Lynx invalid URL parsing with '?'
To: dickey@invisible-island.net, oss-security@lists.openwall.com, 
	fulldisclosure@seclists.org

--001a11427e24943fbe0540629842
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I can't find any bugtracker in lynx ,so i will disclose by this mail and
sent to the author dickey@invisible-island.net.

redrain (rootredrain@gmail.com)
Date:2016-11-03
Version: 2.8.8pre.4=E3=80=812.8.9dev.8 and earlier
Platform: Linux and Windows
Vendor: http://lynx.browser.org/
Vendor Notified: 2016-11-03


VULNERABILITY
-------------------------

Lynx doesn't parse the authority component of the URL correctly when the
host
name part ends with '?', and could instead be tricked into
connecting to a different host.

Passing in `*http://google.com?@hackdog.me/
<http://google.com?@hackdog.me/>*` <http://example.com/#@evil.com/x.txt> wo=
uld
wrongly make lynx send a
request to hackdog.me while your browser would connect to google.com given
the same URL.

PoC
------------------------
lynx  "http://google.com?@hackdog.me/"


SOLUTION
-------------------------
follow the RFC and check for domains before send request.



Regards,
redrain

--001a11427e24943fbe0540629842--
