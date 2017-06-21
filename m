X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["729" "Wednesday" "21" "June" "2017" "12:40:57" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>" "15" "[oss-security] 4 remote vulnerabilities in OpenVPN" "^Date:" nil nil "6" "2017062110:40:57" "[oss-security] 4 remote vulnerabilities in OpenVPN" (number mark "        guidovranken Jun 21   15/729   " thread-indent "\"[oss-security] 4 remote vulnerabilities in OpenVPN\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30590 invoked by uid 550); 21 Jun 2017 10:53:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28416 invoked from network); 21 Jun 2017 10:41:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=C9hxxJWqQFGXC40RJM50U5gFE1FTfrIPDVrytV7H98s=;
        b=qfFz/1MRCRbyUmFMrRzOuKAcENTdqjqTW/wiaBdnrc/fuFxU1yIlfJBNkL/kop0vvC
         lmOFmaSrnneKMVD1SastoDXIiQ3c8oaLavB6uzW0gByv7zOz/xs5GWM8/vGTEp7o/m+T
         xUNVFB3wPl+DOmHj/NemrrLwbkU5WQwf1rsOk5H/v1JRNQaiTIwAR7zzIO1SPrpCvTjW
         BR3fUaYlPenuZaMPlSSjUznEj9K29Rv9thNWGZl5D8HHo7R/9XmOR1ert3C32HP5itkL
         6BJ6PrguiaGynIur/Nm5DYmTo7EA5DYGK+XuPn6m0PJJwjKayyAWXYxjR7tF7c10iVkE
         wJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=C9hxxJWqQFGXC40RJM50U5gFE1FTfrIPDVrytV7H98s=;
        b=DveL4DpPquP8qA7Nr6EhuUWGOSlhaJen5JXiq/tHUUAWAKbSMSN+yOjAUEinCaIzJG
         6QHd9bI3YQV2bQ44jyl6i/fdgXbLte00m02R6NEcKIB1JRHiuS1j/5JwCL7dmoRQdb/N
         aJhab5eodA2Y/m1VntpaiN57fmyL7SE06MR97ldVRUT6oz8/5xU9ywyuK+O5pCO1Egb0
         mqd4V7BtE8WiFUbu+z3dtseWyXxsQyhRU2bxTnfvAqbmFyBmmyYHdypyPwaHyxOooXRs
         ZIE8o4Lx/uxgBoF7nOAm8mJBNlMPBEiP3w3SRVRkJbi9ZNZtPwJDWoDuXA7J6g0jgdDj
         1mxA==
X-Gm-Message-State: AKS2vOznDeO95oHK53GSors04oUn/fmi4EX9Xax9ni6rlsh7nW1orplD
	ofmtxE8oKyirFzzZOCa1pWgIFQSnO+/w
X-Received: by 10.176.82.73 with SMTP id j9mr9364909uaa.74.1498041658222; Wed,
 21 Jun 2017 03:40:58 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 21 Jun 2017 12:40:57 +0200
From: Guido Vranken <guidovranken@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] 4 remote vulnerabilities in OpenVPN
To: oss-security@lists.openwall.com

An extensive effort to find security vulnerabilities in OpenVPN has
resulted in 4 vulnerabilities of such severity that they have been
kept under embargo until today.
Interestingly, this comes shortly after the results of two source code
audits were released, which both failed to detect these problems.
The worst vulnerability of the 4 allows a client the drain the
server's memory, which, due to a particular technical circumstance,
may be exploited to achieve remote code execution.

An extensive write-up can be found here:
https://guidovranken.wordpress.com/2017/06/21/the-openvpn-post-audit-bug-bonanza/
. A technical explanation for every vulnerability is provided, and I
ponder the efficacy of source code audits.

Guido
