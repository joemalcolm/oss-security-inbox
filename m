X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["307" "Friday" "18" "August" "2017" "23:04:37" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170818210437.muhtss4jzu2gf6dw@eldamar.local>" "14" "[oss-security] cacti: CVE-2017-12927: XSS vulnerability in spikekill.php via method parameter" nil nil nil "8" "2017081821:04:37" "[oss-security] cacti: CVE-2017-12927: XSS vulnerability in spikekill.php via method parameter" (number mark "U       carnil@debia Aug 18   14/307   " thread-indent "\"[oss-security] cacti: CVE-2017-12927: XSS vulnerability in spikekill.php via method parameter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28606 invoked by uid 550); 18 Aug 2017 21:04:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28570 invoked from network); 18 Aug 2017 21:04:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qq6ie8JRewLedBAIEYIqwEKKLwplpwkcrv8U+qBlBn8=;
        b=StZHkoo6kJbgrKQSWBO9HXNUHkHdVUYnYkmcoBy2V/J5sd79L13GhDj+F+LY35xelI
         9w2ZiWutI+gAqHElKEomI7+8iByvnQfHuU2ZhPUz6/JcB70w+5CFIqEPqeS/Na9J82tw
         Uis6Orb3a9p9tks+tqNeqTxTWh35UxJvNIrAJnLfBoWPkDYn8vgNMwNVWNZR2NBizQts
         Bb7rEsfqgcxTT1+/7AmuUmpSd/kRX8qJA7ewVe7Gbr8JRnKVtfWcdJTCx27F5v8THbh7
         BWnztXKSGVYYaUP+RtyEbVZ+oByok8yaLmssmHYYSurvVv97Xvl4HNpFe3oe8H/4ApTI
         oA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=qq6ie8JRewLedBAIEYIqwEKKLwplpwkcrv8U+qBlBn8=;
        b=qegFb0pkGY6fd5JNPKkwONDVSIw1rUSrNFTHuSAn37sXb6kXQvl+rNnktyB17ZcE75
         wVa3DscwZF1wCYUkN5AH4koUeXOlcC88yXsPoWm6WMBbGGq4RQwpTTnmEzo1EDeA5Kqc
         X/QRuObcxfmlDddbMEtHHhbIttlgy1HvYanxc36PnNiXjPm6Z4ojav5o3iIALE50cBrV
         sDvSipD4BNuyubEDKtSzlfPMCzSUK/vxIsSoEJQUBAUQRR+Mw1YTOyFUtCLJWiAnD5/x
         tB2A2zL4AKAMe9ZdLoFOiEw+JPBv+Us8EM9aRfBxxnmBv7eBQ6PK7yfAKPIEp1MSd6Mw
         F38w==
X-Gm-Message-State: AHYfb5guasnBG/gCjX5b52GMdFw7j/HakUtDU0I4oFFwEl6VADpNnzeS
	4S4P1v5pZUdKF5jR
X-Received: by 10.28.174.7 with SMTP id x7mr2588149wme.43.1503090278880;
        Fri, 18 Aug 2017 14:04:38 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 18 Aug 2017 23:04:37 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170818210437.muhtss4jzu2gf6dw@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] cacti: CVE-2017-12927: XSS vulnerability in spikekill.php via method
 parameter

Hi

MITRE has assigned CVE-2017-12927 for the following cross-site
scripting vulnerablity in cacti in spikekill.php via the method
parameter:

https://github.com/Cacti/cacti/issues/907

with upstream fix in

https://github.com/Cacti/cacti/commit/a032ce0be6a4ea47862c594e40a619ac8de1ef99

Regards,
Salvatore
