X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4596" "Tuesday" "1" "May" "2018" "10:45:18" "+0200" "nongiach nongiach" "nongiach@gmail.com" "<CABVn_oqyEvT+ma9SuydE8OV1DpXD3Nuo-D3+qLfeWpcM-hX+BQ@mail.gmail.com>" "100" "Re: [oss-security] CVE-XXX (quasselclient/quasselcore version 0.12.4): Heap Remote Code Execution and Null Pointer DDOS" nil nil nil "5" "2018050108:45:18" "[oss-security] CVE-XXX (quasselclient/quasselcore version 0.12.4): Heap Remote Code Execution and Null Pointer DDOS" (number mark "U       nongiach@gma May  1  100/4596  " thread-indent "\"Re: [oss-security] CVE-XXX (quasselclient/quasselcore version 0.12.4): Heap Remote Code Execution and Null Pointer DDOS\"\n") "<CABVn_oo4q7Re5N=n9gZ_bbM=-xbdk7MB3g2bKfRnrFf8Y3ryoA@mail.gmail.com>" ("<CABVn_oo4q7Re5N=n9gZ_bbM=-xbdk7MB3g2bKfRnrFf8Y3ryoA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1728 invoked by uid 550); 1 May 2018 09:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32374 invoked from network); 1 May 2018 08:45:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=2jXe7Aauop+dqiIkMOMNpoOXj2LuRHg4+ruh3bjOzHQ=;
        b=qbYIpyaK7c6HCn0aSLGiMt3+6xNG80mkfWp1pkcfEtwcLkUdw6HFA4MuJoOjX6VSYN
         uHDaZWruZgY7PqHhW4qX5/N14y1eTp4A+BrFeYexG0211vf2ZgxtnEQgZuAErkWGvCEa
         N8FPujKKa1nHpdYi1ftmJv+W7QL7Q8vtKULFbptFBvV70L02EkxEXMIy+Xea7wrrDqD1
         OefyHZT6qV+nO4xlKUyvhfbZNSjppBNifyraUHAzxNldygX+hKV5Z/knLov1mi3VmCMB
         RAd4X5At/33RRXbNGdsClABgqKLW0thrPVoUs9vZEhtijfnzm2C23jn8LABoc80cuM6r
         jlgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=2jXe7Aauop+dqiIkMOMNpoOXj2LuRHg4+ruh3bjOzHQ=;
        b=Jm5YKharFs0nbZlSQ2d+WUDksdNd8uHtRQT5YUVh1gqngHbI20ztlyFFu/kLulUBUI
         ZOxQAbljwKjRHpMo9cTQDliWrXOw8AoZk8Bo9GmSClKzx2sBSvDxiZOcS7VFUaCfhBez
         y0/07GYgT2jvdpDouQ5iuVOknO/R2RwuxJcaiTkBjblKJdCyOYxpag4r4ZvaBfVxGogW
         /iAXnkHTGcJt5jtDWIAgyxoA+ZlMnjQNg0rmOknNs+OtoeNuS56P+XCnnibDh9wi6jEK
         84L01vCcX2cvgjJzB7aU59jB8oky43HCrmyVs1H82n+xK1h98tYvi9Yvzd3Q2fhNxqmD
         ANHQ==
X-Gm-Message-State: ALQs6tBDCWnSBtNOCp2deT2yHzmiqbesrXPMGr0w2FrndIwDDE+yDOy8
	32rzor0pTmkCb8Vky9+WOtPPWKBmUpOabFxYixWs1Q==
X-Google-Smtp-Source: AB8JxZp47rQ3aPcCqAso/qU4N1UG5S39z79p3avinuzmY3SqXoJyLU/8yCBDLaKabXqMZcTpa1JnAmX2BGl1/7fldAg=
X-Received: by 2002:aca:5fd5:: with SMTP id t204-v6mr2948900oib.84.1525164318854;
 Tue, 01 May 2018 01:45:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABVn_oo4q7Re5N=n9gZ_bbM=-xbdk7MB3g2bKfRnrFf8Y3ryoA@mail.gmail.com>
References: <CABVn_oo4q7Re5N=n9gZ_bbM=-xbdk7MB3g2bKfRnrFf8Y3ryoA@mail.gmail.com>
From: nongiach nongiach <nongiach@gmail.com>
Date: Tue, 1 May 2018 10:45:18 +0200
Message-ID: <CABVn_oqyEvT+ma9SuydE8OV1DpXD3Nuo-D3+qLfeWpcM-hX+BQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Kurt Seifried <kseifried@redhat.com>, sputnick@quassel-irc.org
Content-Type: multipart/alternative; boundary="000000000000731185056b20fd11"
Subject: Re: [oss-security] CVE-XXX (quasselclient/quasselcore version
 0.12.4): Heap Remote Code Execution and Null Pointer DDOS

--000000000000731185056b20fd11
Content-Type: text/plain; charset="UTF-8"

Hey,
here are the two CVE numbers assigned:

Vuln1: CVE-2018-1000178,  CWE-120: heap corruption
{"data_version": "4.0","references": {"reference_data": [{"url": "
https://i.imgur.com/JJ4QcNq.png"},{"url": "https://github.com/quassel/
quassel/blob/master/src/common/protocols/datastream/datastreampeer.cpp#L62
"}]},"description": {"description_data": [{"lang": "eng","value": "A heap
corruption of type CWE-120 exists in quassel version 0.12.4 in quasselcore
in void DataStreamPeer::processMessage(const QByteArray &msg),
datastreampeer.cpp line 62 that allows an attacker to execute code
remotely."}]},"data_type": "CVE","affects": {"vendor": {"vendor_data":
[{"product": {"product_data": [{"version": {"version_data":
[{"version_value": "0.12.4>version"}]},"product_name": "quasselcore,
quasselclient"}]},"vendor_name": "quassel"}]}},"CVE_data_meta":
{"DATE_ASSIGNED": "2018-04-30T19:35:42.127351","DATE_REQUESTED":
"2018-04-23T00:00:00","ID": "CVE-2018-1000178","ASSIGNER": "
kurt@seifried.org","REQUESTER": "nongiach@gmail.com"},"data_format":
"MITRE","problemtype": {"problemtype_data": [{"description": [{"lang":
"eng","value": "CWE-120: heap corruption"}]}]}}

Vuln2:  CVE-2018-1000179,  CWE-476: NULL Pointer Dereference
{"data_version": "4.0","references": {"reference_data": [{"url": "
https://github.com/quassel/quassel/blob/master/src/core/
coreauthhandler.cpp#L236"}]},"description": {"description_data": [{"lang":
"eng","value": "A NULL Pointer Dereference of CWE-476 exists in quassel
version 0.12.4 in the quasselcore void CoreAuthHandler::handle(const Login
&msg), coreauthhandler.cpp  line 235 that allows an atacker to denial of
service."}]},"data_type": "CVE","affects": {"vendor": {"vendor_data":
[{"product": {"product_data": [{"version": {"version_data":
[{"version_value": "0.12.4>version"}]},"product_name":
"quasselcore"}]},"vendor_name": "quassel"}]}},"CVE_data_meta":
{"DATE_ASSIGNED": "2018-04-30T19:35:42.127797","DATE_REQUESTED":
"2018-04-23T00:00:00","ID": "CVE-2018-1000179","ASSIGNER": "
kurt@seifried.org","REQUESTER": "nongiach@gmail.com"},"data_format":
"MITRE","problemtype": {"problemtype_data": [{"description": [{"lang":
"eng","value": "CWE-476: NULL Pointer Dereference"}]}]}}

Thx.

2018-04-27 0:39 GMT+02:00 nongiach nongiach <nongiach@gmail.com>:

> Hey,
>
> two vulnerabilities have been fixed in quassel, an IRC connection
> multiplexer,
> one with a high severity and another with a low severity, they are both
> publicly fixed:
> - these patches apply cleanly to 0.12.4 sources
> - 0.12.5 release (Tuesday 24.04) includes these patches, distros have
> been notified for the embargo.
>
> ==============================================
> Vuln 1:
> Title: quasselcore, corruption of heap metadata caused by qdatastream
> leading to preauth remote code execution.
> Severity: high, by default the server port is publicly open and the
> address can be requested using the /WHOIS command of IRC protocol.
> Description: In Qdatastream protocol each object are prepended with 4
> bytes for the object size, this can be used to trigger allocation errors.
> Source: void DataStreamPeer::processMessage(const QByteArray &msg),
> datastreampeer.cpp line 62
> CWE: A heap corruption of type CWE-120 exists in quassel version 0.12.4 in
> the quasselcore that allows an attacker to remote code execution.
> Patch: https://quassel-irc.org/pub/misc/0001-Implement-custo
> m-deserializer-to-add-our-own-sanity-.patch
> Screen POC: https://i.imgur.com/JJ4QcNq.png
> Credit: @chaign_c
> Information: This vulnerability is not specific to qdatastream.
>
> ==============================================
> Vuln 2:
> Title: quasselcore DDOS
> Severity: low, impact only a quasselcore not configured.
> Description: A login attempt causes a NULL pointer dereference because
> when the database is not initialized.
> Source: void CoreAuthHandler::handle(const Login &msg),
> coreauthhandler.cpp  line 235
> CWE: A NULL Pointer Dereference of CWE-476 exists in quassel version
> 0.12.4 in the quasselcore that allows an attacker to denial of service.
> Patch: https://quassel-irc.org/pub/misc/0002-Reject-clients-
> that-attempt-to-login-before-the-core.patch
> Credit: @chaign_c
>
> ==============================================
>
> With lead dev agreement, POC will be released here https://github.com/
> nongiach/CVE/ in one month from now.
> A big thx to quassel team for their quick responses and reaction.
>
> CVE number assignation is ongoing.
>
> Thx.
>
>

--000000000000731185056b20fd11--
