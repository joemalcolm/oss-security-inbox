X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["684" "Saturday" "19" "September" "2015" "10:47:29" "-0500" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9Fs0PAqtR6GgBv-bnK9RSTQQhFH6QuCGo15wvRDjmu+iA@mail.gmail.com>" "25" "[oss-security] CVE Request: Plone Privilege Escalation" nil nil nil "9" "2015091915:47:29" "[oss-security] CVE Request: Plone Privilege Escalation" (number mark "U       nathan.van.g Sep 19   25/684   " thread-indent "\"[oss-security] CVE Request: Plone Privilege Escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23864 invoked by uid 550); 19 Sep 2015 15:47:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23846 invoked from network); 19 Sep 2015 15:47:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=f++6yg3TADCnUCX6M8vd2QO89pl7LzIvgS683WBs5GE=;
        b=WFlCpxySAo+elPipoJvT0/W+Km1yWeQtx7AZPl4LPCWrqpWb4jhZwiLwx8B+W8plKQ
         wfx9Mk8oEDVT+6zSvgoFHX7wttR2mbiWiMP2DS76CPaecPaT+52CoTaXicNGL8991dgw
         lC2U265Gq51axf4nR0WfCcqG4qYA/HheBdcs/Zx5e0RJg9aIiWk1XXYLvbYzwHAD+q91
         KFf0sFxKphtsHR7lT7bE5NNnSHv9VlbDwn9XwV8NU510fG5lxxyHzc34VjrFX1EekFDR
         PhzYqAMNZrN1CDmDwrM2TVvTUombEnTN6gTXwr8bTnVv+I5J99RdUmtAzSS2BL2vmwU1
         pNWQ==
MIME-Version: 1.0
X-Received: by 10.31.1.214 with SMTP id 205mr7246423vkb.90.1442677649274; Sat,
 19 Sep 2015 08:47:29 -0700 (PDT)
Sender: vangheem@gmail.com
Date: Sat, 19 Sep 2015 10:47:29 -0500
X-Google-Sender-Auth: F2MinPTP2oBIUPJknVTeK0xFlAQ
Message-ID: <CAL8hw9Fs0PAqtR6GgBv-bnK9RSTQQhFH6QuCGo15wvRDjmu+iA@mail.gmail.com>
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113dc63ecf7f0605201b90e9
Subject: [oss-security] CVE Request: Plone Privilege Escalation

--001a113dc63ecf7f0605201b90e9
Content-Type: text/plain; charset=UTF-8

Hi,

Can a CVE be assigned to this issue, please?

   https://plone.org/security/20150910/privilege-escalation-in-kupu

An incorrect security declaration would allow any authenticated user to
edit kupu settings--the wysiwyg editor for old versions of Plone. Versions
affected are all versions Plone 3 through 4.2. A hotfix has been posted
only as releases are not made of these versions any longer.

The relevant code is:

https://plone.org/security/20150910/

The vendor credits with the discovery: Richard Mitchell

Thanks, let me know if you'd like more information.

Nathan

--001a113dc63ecf7f0605201b90e9--
