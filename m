X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["304" "Friday" "11" "September" "2015" "08:08:46" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150911060846.GA1605@lorien.valinor.li>" "13" "[oss-security] CVE Request: OpenLDAP: ber_get_next denial of service vulnerability" nil nil nil "9" "2015091106:08:46" "[oss-security] CVE Request: OpenLDAP: ber_get_next denial of service vulnerability" (number mark "        carnil@debia Sep 11   13/304   " thread-indent "\"[oss-security] CVE Request: OpenLDAP: ber_get_next denial of service vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1434 invoked by uid 550); 11 Sep 2015 06:09:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1412 invoked from network); 11 Sep 2015 06:09:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=C3LjI8Lp9SxL2CYeD8cHusE2oBEL3IxBP8aJ/z6NYoA=;
        b=J3FK5cGKRnXHMnzC2EIdkNkPwcdRNeJU3lePvbEhjlsozBUOmFysw06LpplXU1PdvM
         CTTN6o7BpfJpalzszUw8cax0ChhIOSk7vSCK8w90CP2O7J8PETLxI8buNU+7hzFmIUNb
         gTClYimOfYz8cBSsbRPfam6RQW9dGW9sNSDQK5E2zvl1hJeBlV/oP+2RD2igxxpj0lNi
         oz3cFqf4P2YRTM2wqN+80+E7Wp0oyOsO0jUPtpMmQEyFNlNNAjYfLq1qDltUDlKzJhTa
         NDr59XAkfwe9MEWQKRQNBhQ+qftHwcdcSuV9IyMom6pwS8BU+ALxFIMCQWOyNWSIoSwI
         T/lA==
X-Received: by 10.194.104.39 with SMTP id gb7mr78231791wjb.150.1441951728946;
        Thu, 10 Sep 2015 23:08:48 -0700 (PDT)
Message-ID: <20150911060846.GA1605@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Fri, 11 Sep 2015 08:08:46 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: OpenLDAP: ber_get_next denial of service vulnerability
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Could you please assign a CVE for the following DoS vulnerability in
OpenLDAP?

Reference:
http://www.openldap.org/its/index.cgi/Software%20Bugs?id=8240

Upstream fix:
http://www.openldap.org/devel/gitweb.cgi?p=openldap.git;a=commitdiff;h=6fe51a9ab04fd28bbc171da3cf12f1c1040d6629

Regards,
Salvatore
