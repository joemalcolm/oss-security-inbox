X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2371" "Thursday" "19" "October" "2017" "15:38:34" "+0530" "Shalin Shekhar Mangar" "shalin@apache.org" "<CAOOKt5258X689V+=_XtyOJ_n9jiYrLQTcPtsEgGTdb=sWY_2mg@mail.gmail.com>" "61" "[oss-security] [ANNOUNCE] [SECURITY] CVE-2017-12629: Several critical vulnerabilities discovered in Apache Solr (XXE & RCE)" nil nil nil "10" "2017101910:08:34" "[oss-security] [ANNOUNCE] [SECURITY] CVE-2017-12629: Several critical vulnerabilities discovered in Apache Solr (XXE & RCE)" (number mark "U       shalin@apach Oct 19   61/2371  " thread-indent "\"[oss-security] [ANNOUNCE] [SECURITY] CVE-2017-12629: Several critical vulnerabilities discovered in Apache Solr (XXE & RCE)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28251 invoked by uid 550); 19 Oct 2017 10:30:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18145 invoked from network); 19 Oct 2017 10:08:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=YxMFLU9F2dJ0lf8XoPYI2huAsrs7FKg15F0zhxCSRrc=;
        b=LknjQIawx6ODSowLMzViPMgH7y6qdPbgicQjly3C9Y3dWug4b9p5IjsqM1AxBiwKdK
         baHw5B2A62TJlPTb7UIQjg9hMC9uH6x99BXiKeb3wLu1g8AsmuZPKNqQjAZD6lnTzidu
         z+9hxJAkV+Kk6zX+EVQyBs3smUzsLwkMmTrNPfaJoQGiXX9c7ZqnDxTr06Fpk+xWrcX9
         6eX/TRdpmb5ygRlc2LdgV2X/IyOsSY91/Grpn76iIXDllyStp0kHS9ZYDV1hZEjhJ/Iy
         hQkdmVXcHFNt2sw9cXipGF4B/noAGWRVGi/KI1grxbn7kpsBzDE+ryJFQWofOl6cJRvt
         uk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=YxMFLU9F2dJ0lf8XoPYI2huAsrs7FKg15F0zhxCSRrc=;
        b=K5cbdAwd8fnujHnqGvPBTqJUCJmuatboVVlJYvfHyvPwdxZ8UzsaPrKs9iQzjXTTB3
         4iDLju/sPGyHCSmIxC8Gs0TVO9kwrHkxZRKysNlAd1gEyfH+cYaPnIHmesFxG1o2QKTL
         dsbI8iqViECXbG/FdW+nM+2AJZF2ASXC4yoxQKO0o2sCd4S1BEN824+dX8ZfXbg2neiX
         sXFIm532g2NYZe7Nb1irQRZmA2/SB7hejO3nyar8wYP4Z7R/FOBRyG+5VmgY+gSSU1IV
         IpXbsPY++QhqXsoicfQx+PayRYBrqeZyPV9sOdaWNQYlKkm8ovkQQkEwyVjNee/vXLUP
         QOtg==
X-Gm-Message-State: AMCzsaXJNIjuzEbpchWWbVKF59jLhDuwbb8g7qI1ijD2sZZaN1yOZwp4
	lLkAT/4jOlo5SYORRZzDI/e3BnUXiBRKVEBFMeCdBkX2
X-Google-Smtp-Source: ABhQp+TIB1wNul2YR7TbE4b8yr3PVQH9OAyENQMwn0p3AQj2hGgLyWr4u17V2dQBZx60zutczwFfF+LUV+PEFv43AVw=
X-Received: by 10.36.202.131 with SMTP id k125mr1483808itg.138.1508407715539;
 Thu, 19 Oct 2017 03:08:35 -0700 (PDT)
MIME-Version: 1.0
Sender: shalinmangar@gmail.com
From: Shalin Shekhar Mangar <shalin@apache.org>
Date: Thu, 19 Oct 2017 15:38:34 +0530
X-Google-Sender-Auth: -DK5VkrMK3Bi4O5QizwKpFFy5xs
Message-ID: <CAOOKt5258X689V+=_XtyOJ_n9jiYrLQTcPtsEgGTdb=sWY_2mg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [ANNOUNCE] [SECURITY] CVE-2017-12629: Several critical
 vulnerabilities discovered in Apache Solr (XXE & RCE)

CVE-2017-12629: Several critical vulnerabilities discovered in Apache
Solr (XXE & RCE)

Severity: Critical

Vendor:
The Apache Software Foundation

Versions Affected:
Solr 5.5.0 to 5.5.4
Solr 6.0.0 to 6.6.1
Solr 7.0.0 to 7.0.1

Description:
The details of this vulnerability were reported on public mailing
lists. See https://s.apache.org/FJDl

The first vulnerability relates to XML external entity expansion in
the XML Query Parser which is available, by default, for any query
request with parameters deftype=xmlparser. This can be exploited to
upload malicious data to the /upload request handler. It can also be
used as Blind XXE using ftp wrapper in order to read arbitrary local
files from the solr server.

The second vulnerability relates to remote code execution using the
RunExecutableListener available on all affected versions of Solr.

At the time of the above report, this was a 0-day vulnerability with a
working exploit affecting the versions of Solr mentioned in the
previous section. However, mitigation steps were announced to protect
Solr users the same day. See
https://lucene.apache.org/solr/news.html#12-october-2017-please-secure-your-apache-solr-servers-since-a-zero-day-exploit-has-been-reported-on-a-public-mailing-list

Mitigation:
Users are advised to upgrade to either Solr 6.6.2 or Solr 7.1.0
releases both of which address the two vulnerabilities. Once upgrade is
complete, no other steps are required.

If users are unable to upgrade to Solr 6.6.2 or Solr 7.1.0 then they
are advised to restart their Solr instances with the system parameter
`-Ddisable.configEdit=true`. This will disallow any changes to be made
to your configurations via the Config API. This is a key factor in
this vulnerability, since it allows GET requests to add the
RunExecutableListener to your config. Users are also advised to re-map
the XML Query Parser to another parser to mitigate the XXE
vulnerability. For example, adding the following to the solrconfig.xml
file re-maps the xmlparser to the edismax parser:
<queryParser name="xmlparser" class="solr.ExtendedDismaxQParserPlugin"/>

Credit:
Michael Stepankin (JPMorgan Chase)
Olga Barinova (Gotham Digital Science)

References:
https://issues.apache.org/jira/browse/SOLR-11482
https://issues.apache.org/jira/browse/SOLR-11477
https://wiki.apache.org/solr/SolrSecurity

-- 
Regards,
Shalin Shekhar Mangar.
