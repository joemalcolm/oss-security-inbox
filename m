X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["588" "Thursday" "12" "May" "2016" "11:23:02" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160512092302.GA13770@lorien.valinor.li>" "18" "[oss-security] Possible CVE request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)" nil nil nil "5" "2016051209:23:02" "[oss-security] Possible CVE request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)" (number mark "U       carnil@debia May 12   18/588   " thread-indent "\"[oss-security] Possible CVE request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24149 invoked by uid 550); 12 May 2016 09:23:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24129 invoked from network); 12 May 2016 09:23:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=u2FIK1bie8864nVjkbrHEUpDcGRGHhjvZf6o5pak5Zo=;
        b=fpRwVwvz/9mlIwre4LHe0dB8em0PpEcnn14TpYzas04CmVkET+e2Sf4JmOOsz8IESp
         lgHUWSd/PaSFrzibeeQTNP2p+25tDG6iHbSJe4Ig7B1ZJLSsScXo+xX8IE5c30QJW3Tl
         oPQPPaIcdAoMLmqDPf1I60gymAiicHcuCaWhHYqkBENqjydq/b1ftTefFj8SlhsQDBQe
         TuNsl1b3vtqt3Ke5jqFHbkNzJ5QdWaMjV63a1mxQE/x4TCVbjj42Qd8AO1D99FyqA1z1
         rtS94FggJpA93IujgebPrY/mAd4cv5DExsj3nGa4LPs0SSpUTdu/ARVgAqg4wOJxKXIE
         jWTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=u2FIK1bie8864nVjkbrHEUpDcGRGHhjvZf6o5pak5Zo=;
        b=g2JA7FBxKtxatm8rNZHmI8PsnAgIyUZZ7zzRDDMEF2+z1lc3cKEvvYCyNdnW8R4obt
         ZL/riIyfqqjGS706OeAADV51MvmVfx6cBE7oPDK58m0tbAUB9Z6uJdEvQaUBLJHqtQPr
         /tCzlqUM9WSJx0KdnGvh7cd7GoMh9hnAUaLm4In124jIMm/grn26bY0Z03Zm+OChWaTU
         QtYGD6Ey+NyW2d75G/YdVvVwUMTeheUvY2qE0DxwyFQQ9zsf5hwkE8ivZcahVsdlZnDE
         trIL2f1mxGcuxU1cLkoM8cYIhlA1C3I+SkgZDGH1OVr0AmAhsXEk15QPDpHmqqvyWZvC
         S8+Q==
X-Gm-Message-State: AOPr4FX2zIiVcp/kpatCSylL+Q2mS4dC8K0kx0/tBtGQI8AYlCqPNwU/mljCsWfFu21vSg==
X-Received: by 10.194.9.233 with SMTP id d9mr9673909wjb.29.1463044984910;
        Thu, 12 May 2016 02:23:04 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 12 May 2016 11:23:02 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160512092302.GA13770@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] Possible CVE request: gdk-pixbuf: Additional fixes to protect
 against overlows in pixops_* functions (similar to CVE-2015-7674)

Hi

CVE-2015-7674, an interger overflow flaw in the pixops_scale_nearest
function, was fixed by

https://git.gnome.org/browse/gdk-pixbuf/commit/?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa

There is another commit in the gdk-pixbuf repository to fix overflows
in the pixops_composite_nearest, pixops_composite_color_nearest and
pixops_process functions:

https://git.gnome.org/browse/gdk-pixbuf/commit/?id=dbfe8f70471864818bf458a39c8a99640895bd22

Can you aassing an additional CVE for this since the scope for
CVE-2015-7674 was for the pixops_scale_nearest function?

Regards,
Salvatore
