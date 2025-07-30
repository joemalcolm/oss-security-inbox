Received: (qmail 11777 invoked by uid 550); 30 Jul 2025 18:50:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22145 invoked from network); 30 Jul 2025 18:49:23 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1753901353; bh=egpWx9tKZPYAWe9tbi2+/4MUGmS6VyH5PLmM+Hrgpxc=;
	h=From:Date:Subject:To:From;
	b=OEkK8a1Epw9V1xZcQirrp+jBy41yZTCE6NA744Au80YbJeM9xBCM/yh3qJpoSAAYF
	 0ElGp6JTIF4r8HzGv51/i83HYDopfT/R4dtRyXrExiY9LSWFwn+x6vgRwTNHuwFXEi
	 5OmNt1+k8ibPdpUBGc5GAadmQVvQ0hamM1X0exMlUM8lBf84x0siVQQs7o5s4+fUo6
	 sgpXGXROivXwTiCFy/Q++4VoMb2osSIhG78AzvJpKs24Qng3Zpa3Qp0G2Uos8oweUX
	 Y0/T7wIA5QaQ1OkOirBKo8sq+0I25z5D+E/aDT9zM4SPphvz1OW0sRQWNG7dd4TcNS
	 mbeCVcee3O2tA==
X-Forwarded-Encrypted: i=1; AJvYcCXy9uUoS9xEILKk8vDQlfB+gI0q+iaOz4wN6RteDv86shyGmKb5gILFNHERL1aCN50mQ3YaKDY3BqaRkrw=@lists.openwall.com
X-Gm-Message-State: AOJu0Yz9DlzYHyfa+zzpVtYE/3CnnTmbkbmqS6kI0jUJcZ8mcF0Kbo/Q
	/siUh9SR4oKjR2eDh9Lhl8U38mMYs6akd4B4ciNkDC6wLnIUGyUXv39dugXRlTCYGJ6w5XcF+Tm
	4VvxAMtcxxual3USuKTm+Tt+wG+3GgvM=
X-Google-Smtp-Source: AGHT+IFPsuVXzaWFJflwBxk7k2/eqtFvaQfIBKIYl2QXmcjBcZrWNAzvuNJV9kIhAB3IQM2GQ+AnmrTzqgx73csJlzA=
X-Received: by 2002:a17:906:b84f:b0:af9:14cf:d808 with SMTP id
 a640c23a62f3a-af914cffeaamr36510966b.55.1753901353452; Wed, 30 Jul 2025
 11:49:13 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Wed, 30 Jul 2025 20:49:02 +0200
X-Gmail-Original-Message-ID: <CAMufup6S_bp8Z0dmz2CSzzxVC-sqrsBy22mkO0vhhhnyof49jw@mail.gmail.com>
X-Gm-Features: Ac12FXxmUP8vdbJnfBrwUCgKDpZMz2OJNpA-MNU9tdxINDXgbOWNxFHLbUOl-c4
Message-ID: <CAMufup6S_bp8Z0dmz2CSzzxVC-sqrsBy22mkO0vhhhnyof49jw@mail.gmail.com>
To: announce@apache.org, dev@jspwiki.apache.org, user@jspwiki.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	XBOW Security <bb@xbow.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-24853: Apache JSPWiki: Cross-Site Scripting (XSS) in JSPWiki
 Header Link processing

Severity: Medium

Affected versions:

- Apache JSPWiki  before Apache JSPWiki up to 2.12.2

Description:

A carefully crafted request when creating a header link using the
wiki markup syntax, which could allow the attacker to execute javascript
 in the victim's browser and get some sensitive information about the
victim.

Further research by the JSPWiki team showed that the markdown parser
allowed this kind of attack too.

Apache JSPWiki users should upgrade to 2.12.3 or later.

Credit:

The issue was discovered by XBOW (https://github.com/xbow-security,
https://xbow.com) (finder)

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2025-24853
https://www.cve.org/CVERecord?id=CVE-2025-24853
