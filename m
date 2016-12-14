X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["435" "Wednesday" "14" "December" "2016" "16:57:11" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161214155711.4z2obsdysl4qwzl3@eldamar.local>" "15" "[oss-security] CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files" nil nil nil "12" "2016121415:57:11" "[oss-security] CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files" (number mark "U       carnil@debia Dec 14   15/435   " thread-indent "\"[oss-security] CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28420 invoked by uid 550); 14 Dec 2016 15:57:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28402 invoked from network); 14 Dec 2016 15:57:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4h/W078lhRiUfLhJ7qUzivDWhHJasUV3YtT/Uu68I1M=;
        b=LimFpqzvjGyeKmlkVeATtqEDwpbktLfgd1OA8gu4ynjRgA4RM8+VozunbiFHUhKcVS
         G/Dn5zfpS88F745gQXw1yuTjvvdC2MqTpfBS4QA8oQcGMrPuXTHFz80RVmhg7jeswxQh
         jD+GteaMNSlP+BK8PeisMRk30hL3+MYuf3hM+M0bUINV1B1iPRTlbOymFCtqyWfqK0Cq
         ffS2i/o/CgcJrADrOGqHoPFVBnu3wYEEvn+8DzOjbGFFotwXSzDELSVsgxk08yKE3qZQ
         cdDsQ6jKif0gKC11ziau8DIH7uKo6VYnyTyiLPtHxvvSh/2Beawcmop5TmkgXHN30YS1
         qpyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=4h/W078lhRiUfLhJ7qUzivDWhHJasUV3YtT/Uu68I1M=;
        b=eL+V2hDXB92TGd3r7MBb3bpGdbbJepxcPFXHXFnYX5deGjUL6C75ZStrgtu/ikgT25
         aScLvtv31wdY8eu3Ys20fDEwYfGKTThM//CpVPsTJmTdeyaodc9Qx70sd3L1MZBOOMRT
         +cZzgsNzyGfY53gPIWcJH7wtDL9Yd5SOhzfwJs1Ulj9RPZCbqfLHSwz23PAa2zhQmSLY
         NchLfxpxLt8GKC2J6kBR87c2SpqGLL46tM8itMnHPvZGmd5PcTgAT4ypK0gHr/lVY3z/
         U0AHOZ8h9IPZCiUviOWU/3ytKY3mx048bDgRBqpeTnlnd7zMcKLQkFTOldbMb7xHVN4Y
         7Jow==
X-Gm-Message-State: AKaTC038mjNztnz5Greay7B3vpePby2Vw2M+Lefg1UqJdhWxrODLaMusNzbQ9HtgbuxT3Q==
X-Received: by 10.28.153.201 with SMTP id b192mr7838651wme.61.1481731032570;
        Wed, 14 Dec 2016 07:57:12 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 14 Dec 2016 16:57:11 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161214155711.4z2obsdysl4qwzl3@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: FlightGear: Allows the route manager to overwrite
 arbitrary files

Hi

The FlightGear project fixed a security issue, allowing arbitrary file
overwrites for files the user running FlightGear has write access to
and could be taken advantage to for other impact as arbitrary code
execution.

References:
https://bugs.debian.org/848114
https://sourceforge.net/p/flightgear/flightgear/ci/280cd523686fbdb175d50417266d2487a8ce67d2/

Can you please assign a CVE for this FlightGear issue.

Regards,
Salvatore
