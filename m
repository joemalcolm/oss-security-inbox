Received: (qmail 12116 invoked by uid 550); 23 Mar 2026 17:53:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29740 invoked from network); 23 Mar 2026 17:50:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774288191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2w238zZi08sCILB284Mg1rxh+y9btTyrr28yvV3FUkg=;
	b=A+3xjmB2m94AK7KJQMNrwfYue9YSJq0v6mJFtBa7pRSO6UBOOO/qb6WFiYi7fKjzhCpnkf
	CRrulyUTnImEGjYt+7t2r95vEkiZQQ5xj92hNandP2tqwzMcl6zeqop7aDhG1ayBDK4lvr
	RP5BhlC9+hDl4Rpcj0Xisduhx42x9VY=
X-MC-Unique: NkKxIMrDNJGOEUxitfxpCw-1
X-Mimecast-MFC-AGG-ID: NkKxIMrDNJGOEUxitfxpCw_1774288189
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774288188; x=1774892988;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2w238zZi08sCILB284Mg1rxh+y9btTyrr28yvV3FUkg=;
        b=VuxmxvkY5WM+9PdR4RCFq/ULLwhbOZvyVQWIAi9Vuj/He7lkXl+l8SOsj5HoMXJS2I
         hGnsWVZJ6AQ6AgWpdB05D++yN/602d9GNo0o9U7LpuIP1E6/IR6pPI1490tBW+8lgoz+
         TdbQyh1mGTaPIsFdUXyGGBydihe7baoudZaTa+mmBh+eozrq/lNuLWUFymC2QnDLTif9
         bufu/bC7IAJhILu1BNIM5sOQm6LPX3+77I9hw0jVqRhNb1EuS2pvF9gcB4k3BsrQek11
         hAUjraT2lK2sR2aF5Ve5k78xRi+90AqXUzpLycV9AGrEcY6GupRdEI8m7zx15siulUTW
         Nv6A==
X-Gm-Message-State: AOJu0YwwC10ND2JnNgm5Ms3G4ABGnJc+aLG+XR9nCJgk6FC2TjKgeUXy
	RW1hmmUXJObkf5yswkebWrNBgNSrdDwJPG6nXThXJhq+UCzzU4/f2xCglycRZvw+Sqom/DYR2Zb
	N3/fLdaNhL0w4mdrdKjKn1XKu2k6ghbnynmXN3rpPIvwua/nv+22JDzHANM2IHuz6YXFyF1yIgA
	z/DIuhoes8OcteXRyvfHnlGsCcCWNC4Rnm0dlMQHaJub/RafNp3B4=
X-Gm-Gg: ATEYQzylNj8OE0W+c/RAr13sDP/rHdS/Jv6ruhHusGYVO46Zpt9bX+Qm7IMOoUJ7Qjn
	WWGcqiwArBfz4tVG3EejV6aTi+ZnAQxNJhVx+0npTw1P6W3T1n9l4QtONFEtoSzBygHeJtx+CwS
	KoZ0Yc7i5biZKZC/gGbPv+lix1T7pg6k5JGsSD4rbEpW/NRAdWIzn402tVZhLe9By41EwxbCYDH
	QQEGqLsk7w6c7B/bQKm5FmMi7dNthOXSPyXv/2eg6CQKXJeoaxB94MO8r4STdUjbRGHbeznAssk
	z5AbXdYE0OzXNH4g1s5Hlngj7Ck3cngGxxgzx8dRT9CxSrD+GcZ3qHVyBTmEqO1npfL9Ker8lv4
	jKS1E6aQw6+PeDe5Xwrm+sZxY5QhNL5MlwKh7UiBASUIDWE+kwxcsFnc+CI4C7KKZrame+AcM9p
	Mw2TB1tDtpub2HxAqzSHd4Wg==
X-Received: by 2002:a05:6214:5f07:b0:89a:1512:8258 with SMTP id 6a1803df08f44-89c859d08c4mr205597256d6.9.1774288188384;
        Mon, 23 Mar 2026 10:49:48 -0700 (PDT)
X-Received: by 2002:a05:6214:5f07:b0:89a:1512:8258 with SMTP id 6a1803df08f44-89c859d08c4mr205596626d6.9.1774288187547;
        Mon, 23 Mar 2026 10:49:47 -0700 (PDT)
Message-ID: <f35f110c-bf83-4715-83a5-f774ec317b68@redhat.com>
Date: Mon, 23 Mar 2026 13:49:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat, LLC.
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BIQdXoEJqvWMQt17hnE0OTrb1FUTmILfJC4QPnz94sk_1774288189
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2026-03-23

The following security advisories have been published:

GLIBC-SA-2026-0005
==================
gethostbyaddr and gethostbyaddr_r may incorrectly handle DNS response

Calling gethostbyaddr or gethostbyaddr_r with a configured nsswitch.conf
that specifies the library's DNS backend in the GNU C Library version
2.34 to version 2.43 could, with a crafted response from the configured
DNS server, result in a violation of the DNS specification that causes
the application to treat a non-answer section of the DNS response as a
valid answer.

A defect in the getanswer_ptr function, which implements the iteration
and extraction of the answer from the DNS response, can cause it to
incorrectly transition from the answer section to the next section while
still treating it as an answer to the question.  This can happen when
the answer contains only skipped records, and the subsequent section
contains a semantically invalid T_PTR record.  This is considered a
security issue because it is a violation of the DNS specification that
leads to incorrect behaviour that could result in the wrong hostname
being returned to the caller.  At the time of publication, no known
affected DNS server returns results that would be incorrectly
interpreted by the library.  An attacker would either need to be network
adjacent or have compromised the DNS server to use this defect to hide
returned reverse DNS results from intrusion detection systems. Even
then, the inbound connection from the attacker, or the outbound
connection from the application, would be visible to the intrusion
detection system.  At best, the defect can be used to obfuscate and
delay analysis of the evolving threat.

CVE-Id: CVE-2026-4437
Public-Date: 2026-03-20
Vulnerable-Commit: 32e5db37684ffcbc6ae34fcc6cdcf28670506baa (2.34-323)
Vulnerable-Commit: def97e7f71a07517810f7263213d607e08ad21f1 (2.35-188)
Vulnerable-Commit: 77f523c473878ec0051582ef15161c6982879095 (2.36-30)
Vulnerable-Commit: e32547d661a43da63368e488b6cfa9c53b4dcf92 (2.37)
Reported-by: Antonio Maini (0rbitingZer0) - 0rbitingZer0@proton.me
Reported-by: Kevin Farrell

GLIBC-SA-2026-0006
==================
gethostbyaddr and gethostbyaddr_r return invalid DNS hostnames

Calling gethostbyaddr or gethostbyaddr_r with a configured nsswitch.conf
that specifies the library's DNS backend in the GNU C library version
2.34 to version 2.43 could result in an invalid DNS hostname being
returned to the caller in violation of the DNS specification.

A defect in the getanswer_ptr function, which implements the iteration
and extraction of the answer from a DNS response, can cause it to accept
an invalid DNS hostname that can contain shell metacharacters. An
application that uses the returned hostname in a shell, without guarding
for shell expansion, may be subject to shell injection attacks.  At the
time of publication, no known affected DNS server returns results with
shell metacharacters in the results.  An attacker would either need to
be network adjacent or have compromised the DNS server to use this
defect for shell injection.  No known vulnerable application has been
identified.

CVE-Id: CVE-2026-4438
Public-Date: 2026-03-20
Vulnerable-Commit: 32e5db37684ffcbc6ae34fcc6cdcf28670506baa (2.34-323)
Vulnerable-Commit: def97e7f71a07517810f7263213d607e08ad21f1 (2.35-188)
Vulnerable-Commit: 77f523c473878ec0051582ef15161c6982879095 (2.36-30)
Vulnerable-Commit: e32547d661a43da63368e488b6cfa9c53b4dcf92 (2.37)
Reported-by: Antonio Maini (0rbitingZer0) - 0rbitingZer0@proton.me

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD

