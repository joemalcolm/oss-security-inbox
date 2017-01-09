X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["426" "Monday" "9" "January" "2017" "23:52:08" "+0100" "Albert Astals Cid" "aacid@kde.org" "<1493422.koq1c4PBay@xps>" "15" "[oss-security] ark vulnerability: need CVE" nil nil nil "1" "2017010922:52:08" "[oss-security] ark vulnerability: need CVE" (number mark "U       aacid@kde.or Jan  9   15/426   " thread-indent "\"[oss-security] ark vulnerability: need CVE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10146 invoked by uid 550); 10 Jan 2017 00:19:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26411 invoked from network); 9 Jan 2017 23:52:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:subject:date:message-id:user-agent:mime-version
         :content-transfer-encoding;
        bh=sZpzBBoXYnrBIb/elazwaChVw25YXJlvn/FpU2eIqb8=;
        b=QuJ5oaFrp2J9znss28sbteJVECLQSU3xD1fi/THKLbbL3o8ZcvUsn8/fuEQu4UWxXT
         hYLWC5op+4TrAGNvcUs21U8Lx+HqOoutBk99ADsuToW7FXSjy0fHJmsf6t71gXWDE/jo
         K4SKmR+NRS+fI454+3w8nVEHTMZ8lQaI2NjsaDCGHrSpbedQjTQAjrOp/FrVZ8DQs1J5
         PoRJmvyB/NM8KG0WMdG/xg+vNYi2WSZ0MgRixAcqSk48zQHps324+3ZN9E9D/F5zdZkL
         EcX33APR/cyn/OW86nuPGezw/bRIBF2rSQHqd5n4gts01ZeoubBCJ/F30w0cKi6S0qeT
         Ft+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :user-agent:mime-version:content-transfer-encoding;
        bh=sZpzBBoXYnrBIb/elazwaChVw25YXJlvn/FpU2eIqb8=;
        b=JSNfjXf6vjqvGRXue5AerZjb9DfSGtqVF6hJ0r4beNIYTP3cHZ4oCrK+rDk5gpZlPe
         G7MpZ7bXf0fOl1VlHWXd/lAdOWJ9YU+wirYsOAJWv+G1Rzn0As2ZRJ2RJqkKMwleQCgG
         7KfJc/NGBjDod4x7S1ZRgK906gbu5AF1gzS6QjF9GMt+nimV5ueUF0CCF4y+nxEx++1p
         yB+RKDiAuanH0og7m2IEzgQK4b88kTH97fo5Zf9I+Hmkpo6015Sk/uXeT94ne5LQHWRW
         Ex3/xXK26/6IwuPN+330O+3Na+6OYKhxeCgan5ztfYDxXOzK5209lU2iBtt7vSdrIHUD
         EDMQ==
X-Gm-Message-State: AIkVDXLx696UzRWhcvodGpwu6dA3+RCnT3Hp/TjxhIXleXJ61sGLsG2NGKIHeXygXBc7ZA==
X-Received: by 10.223.174.73 with SMTP id u9mr19223wrd.159.1484002330621;
        Mon, 09 Jan 2017 14:52:10 -0800 (PST)
Sender: Albert Astals Cid <tsdgeos@gmail.com>
From: Albert Astals Cid <aacid@kde.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>, security@kde.org
Date: Mon, 09 Jan 2017 23:52:08 +0100
Message-ID: <1493422.koq1c4PBay@xps>
User-Agent: KMail/5.2.3 (Linux/4.8.0-32-generic; KDE/5.26.0; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] ark vulnerability: need CVE

Hi, Albert from KDE, can we get a CVE assigned for ark (archive handling 
tool)?

The problem is that the "Open" functionality of ark would run shell scripts, 
this is quite unexpected.

The title for the advisory we're preparing is
  Ark: unintended execution of scripts and executable files

The fix is already available at
https://cgit.kde.org/ark.git/commit/?
id=82fdfd24d46966a117fa625b68784735a40f9065

Thanks,
  Albert
