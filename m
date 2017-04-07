X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1927" "Friday" "7" "April" "2017" "19:49:58" "-0300" "Oliveira Lima" "oliveiralimajr@gmail.com" "<CAGDGa53bNmj6RL5k3As_bKh+mc2tkEi+B4GhfDzJEUZbGQYOEA@mail.gmail.com>" "55" "[oss-security] Request CVE ID for information disclosure present in ForgeRock OpenIDM 4.0.0 and 4.5.0" nil nil nil "4" "2017040722:49:58" "[oss-security] Request CVE ID for information disclosure present in ForgeRock OpenIDM 4.0.0 and 4.5.0" (number mark "U       oliveiralima Apr  7   55/1927  " thread-indent "\"[oss-security] Request CVE ID for information disclosure present in ForgeRock OpenIDM 4.0.0 and 4.5.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31869 invoked by uid 550); 7 Apr 2017 23:13:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26070 invoked from network); 7 Apr 2017 22:50:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=hS6mgh6bJ2DvvJm/8jCf/qk04dbprKceELF4FFiXfzE=;
        b=O6D31Ln9Acx8HC+YROTffdcDkLkLWWLdk54XkTuBUIld1n0TWiJpgcJC8eXpeSlkgn
         h/Z3HkYhUjdQ0kxUPbt1yn31PLicSOJhNuPTCLakAM89bb8qD7aH8erbDIlpkrkOAxgI
         QRXdEDGVh4NMml4TF8hzzeYPQEbepsz5RXawKlKwG6MR04XffIuPI0CpvIPhoXk4pFlD
         ErhtSG/oMMTh3y3gn+EYsQhx9jgkqoOXY7LghCz/TVKWSpjs9RKzdWdLOWPovUAOYInq
         P2b/kMCGcS8RYa7QRXNcKT3rkCr586klShn4MXvVjHJXZSB1Tf08mS4EqWprwFjxuWFe
         QZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hS6mgh6bJ2DvvJm/8jCf/qk04dbprKceELF4FFiXfzE=;
        b=P1cSi788NGdW/WyikfEa/xJTmROi1ThWAaNezDpoTbkiqzb4OySbiYkKAlcf9oiksn
         qu5ziM99m5G9GVkMhuB/n52nwuEY9SfDe6oy30aQXbyI3A5oAmWz0tfjJLXKzlIx3O7E
         ntBFG4XjCDNcOObjCM00ol0tNUp/pT2rtSYokGGbo87MSO4eRM6rBDhQeDVqZIZnutNo
         zgZZI2YJllGEFVz61YDDH4062z+BbPZdVAT8nVnTFhIXjyWRmuDxFz+mRs96kppfpaCH
         W7/KayEiWECqa3OGf2gEpfwwz/Gyopv01D75zmfMQk+IaHGGi63HgD9TBlLVdtVe8L/L
         WvEw==
X-Gm-Message-State: AN3rC/6/d9Otd6jeCR5OQUWpircJUnjQnDkywyW5tUNqxAimkL6i578eZEK0UhWS4mFgQ60cZ8QDD0pMAH1IWQ==
X-Received: by 10.25.201.146 with SMTP id z140mr1606109lff.108.1491605398988;
 Fri, 07 Apr 2017 15:49:58 -0700 (PDT)
MIME-Version: 1.0
From: Oliveira Lima <oliveiralimajr@gmail.com>
Date: Fri, 7 Apr 2017 19:49:58 -0300
Message-ID: <CAGDGa53bNmj6RL5k3As_bKh+mc2tkEi+B4GhfDzJEUZbGQYOEA@mail.gmail.com>
To: cve-assign@mitre.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114b95faf3b09e054c9b71a7
Subject: [oss-security] Request CVE ID for information disclosure present in ForgeRock
 OpenIDM 4.0.0 and 4.5.0

--001a114b95faf3b09e054c9b71a7
Content-Type: text/plain; charset=UTF-8

Request CVE ID for information disclosure present in ForgeRock OpenIDM
4.0.0 and 4.5.0

Description
***********************

The OpenIDM info endpoint may leak sensitive information under certain
circumstances.
Looking closely I noticed that amid the requests for access to solution idm
several requests on behalf of a user: "anonymous", editing these requests I
got a return code 200, containing information from the internal server,
such as addresses Ips, thus characterizing an information disclosure
vulnerability.


Proof of Concept URL
***************************

*http://www.rootlabs.com.br/information-disclosure-forgerock-openidm-4-0-0-and-4-5-0/
<http://www.rootlabs.com.br/information-disclosure-forgerock-openidm-4-0-0-and-4-5-0/>*

Report Timeline
************************
10-Jan-2017- Reported
11-Jan-2017- Vendor Response
28 -March-2017- Vendor Fixed
07-April-2017- Public disclosed

Vendo Reference
*****************
*https://backstage.forgerock.com/knowledge/kb/article/a92936505
<https://backstage.forgerock.com/knowledge/kb/article/a92936505>*
<https://br.wordpress.org/plugins/simple-photo-gallery/changelog/>
References
*****************

<https://br.wordpress.org/plugins/simple-photo-gallery/changelog/>
https://www.owasp.org/index.php/Information_Leak_(information_disclosure)
<http://www.rootlabs.com.br/xss-simple-photo-gallery/>
*https://backstage.forgerock.com/knowledge/kb/article/a92936505
<https://backstage.forgerock.com/knowledge/kb/article/a92936505>*

*http://www.rootlabs.com.br/information-disclosure-forgerock-openidm-4-0-0-and-4-5-0/
<http://www.rootlabs.com.br/information-disclosure-forgerock-openidm-4-0-0-and-4-5-0/>*

-- 
Oliveira Lima Jr
roothc.com.br
Linkedin <http://br.linkedin.com/pub/oliveira-lima-junior/2b/48/285/>
@oliveiralimajr <https://twitter.com/oliveiralimajr>

--001a114b95faf3b09e054c9b71a7--
