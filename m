X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1091" "Friday" "9" "October" "2020" "10:06:46" "+0200" "Stamatis Zampetakis" "zabetak@gmail.com" "<CAFQnWdYH1hR3cVN6F+psHrUD2B6SK=QtvL40+HTXO0UuK16cXw@mail.gmail.com>" "38" "[oss-security] [CVE-2020-13955] Apache Calcite Disabled HTTPS Hostname Verification" nil nil nil "10" "2020100908:06:46" "[oss-security] [CVE-2020-13955] Apache Calcite Disabled HTTPS Hostname Verification" (number mark "U       zabetak@gmai Oct  9   38/1091  " thread-indent "\"[oss-security] [CVE-2020-13955] Apache Calcite Disabled HTTPS Hostname Verification\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13955] Apache Calcite Disabled HTTPS Hostname Verification" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21895 invoked by uid 550); 9 Oct 2020 10:10:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11378 invoked from network); 9 Oct 2020 08:07:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=tNjExoBFBDH47xZHpagtqE4Aw0R1+/KH9pooAjwRMsQ=;
        b=Yec9u02+IYI/XF93LCOCasO8rECN+28sqL/Aux0bHDuYl/a0UL1a05bynBeDYuQ/Ul
         yVyXrhdUoHVGjcsemAkBuTQBXVi8YXN+KBlkup0SDsY+Svp/ePbBqH7+L17eWzizaKoe
         rwqDLHT/3rZD+zF53eqQmu0J/J40gqKBnIESBUfKXIWK+8qWILsfr/0YTjYdqPTZKqv+
         Zy7XNIMBRSjW94b5DsU04cnFS6uM5luoB+2VJDIlrgjb8IU8sRQpp2Z8uHOkzR1tyRgN
         tbgISTE62LpAA2JdjZVxbuApnOHzBBNB6eikmlrRJAGoxefHrCQtG/5WT0vFHeLop6ac
         be7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tNjExoBFBDH47xZHpagtqE4Aw0R1+/KH9pooAjwRMsQ=;
        b=d+ucR1VV9PzDfNcbeQNMG0FTymJuBf29X5nTxVIWHOwUShiMdkL2mGP8UOaSz/+W/P
         s/c7PEJlBXna/JRsUXAQn0LDQDZEFYOvXO5bZHYmHi3u+i/yikmZzB34H/bO00yp6ez3
         VjB3ji921fRtntn23B+RDdK3ZlVJ8gfvCtWK0KetP9gbjJGXS2ySy9sWB5wYLDQvlhyp
         2AOucFIgwleE+WKMRBEfn74Io7VK8+/JjY8GXEg7vgYXgARhnBfevDzhhiRVkpE96QVR
         7a2fwm+P//sO378Wy6MgBYqNVHoeQHRix/BsgIKiI8wSEwe7PVZV1R4fi0PnTZq4g6cE
         JdGw==
X-Gm-Message-State: AOAM532ekTDGTZpJJJZK7LtxBrslooqH6WfW3hJM06j0Z0R7aThY+4V1
	71tHzIO2SOJ709ZNAeUIgilWXx5hs2HT465hsgxO/F9o1GOW2g==
X-Google-Smtp-Source: ABdhPJyM0O7T+1I9HC5Y/DFz3pyMthpAM4VKdHWIkqJNBBjMUo5dFvBdxRTVB4tNhqtuMAimzfOFnntmkdl+PW9GwsU=
X-Received: by 2002:a17:902:fe86:b029:d3:eca7:d250 with SMTP id
 x6-20020a170902fe86b02900d3eca7d250mr10885324plm.50.1602230817496; Fri, 09
 Oct 2020 01:06:57 -0700 (PDT)
MIME-Version: 1.0
From: Stamatis Zampetakis <zabetak@gmail.com>
Date: Fri, 9 Oct 2020 10:06:46 +0200
Message-ID: <CAFQnWdYH1hR3cVN6F+psHrUD2B6SK=QtvL40+HTXO0UuK16cXw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b9a14205b1386e16"
Subject: [oss-security] [CVE-2020-13955] Apache Calcite Disabled HTTPS Hostname Verification

--000000000000b9a14205b1386e16
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Calcite 0.8 to 1.25

Description:
HttpUtils#getURLConnection method disables explicitly hostname verification
for HTTPS connections making clients vulnerable to man-in-the-middle
attacks.
Calcite uses internally this method to connect with Druid and Splunk so
information leakage may happen when using the respective Calcite adapters.

The method itself is in a utility class so people may use it to create
vulnerable
HTTPS connections for other applications.

=46rom Apache Calcite 1.26 onwards, the hostname verification will be
performed using the default JVM truststore.

Mitigation:
Users should upgrade to 1.26 if:
they are using Druid or Splunk adapters via HTTPS;
they are using HttpUtils directly for HTTPS connections.

Credit:
This issue was discovered by =EF=BB=BFSimon Gerst.

References:
https://issues.apache.org/jira/browse/CALCITE-4298

--000000000000b9a14205b1386e16--
