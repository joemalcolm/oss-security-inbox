X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["878" "Wednesday" "30" "September" "2020" "20:39:23" "+0530" "Hardik Vyas" "hvyas@redhat.com" "<CAOo2v=DZnn16vnvyX_ncb0H0gciYwxpV6DNFLN2s-VB1WLnyPA@mail.gmail.com>" "29" "[oss-security] CVE-2020-10762 gluster-block: information disclosure through world-readable gluster-block log files" nil nil nil "9" "2020093015:09:23" "[oss-security] CVE-2020-10762 gluster-block: information disclosure through world-readable gluster-block log files" (number mark "U       hvyas@redhat Sep 30   29/878   " thread-indent "\"[oss-security] CVE-2020-10762 gluster-block: information disclosure through world-readable gluster-block log files\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10762 gluster-block: information disclosure through world-readable gluster-block log files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19640 invoked by uid 550); 30 Sep 2020 15:27:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13359 invoked from network); 30 Sep 2020 15:10:04 -0000
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601478593;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Io4x7Zt//g5f0KJG5qgKF9ZvASYzDQ1cC9Tn59M8S6Q=;
	b=A0Qi3WWtrGWT7c0OVlCb5L56TexheR82ENbJMUCpPOfCUrSx2WGA6qwjFxPdKPlaEG/y08
	pPdF/aHouVf8Haog4Qkky5RJcbKjpS/Q6iePFgmYuGT5pEq0anUz0aIwWJ643SxakWRwFb
	o8ifkuKaL37VbvMpNmNGglgzED6w480=
X-MC-Unique: lA8ZfXc5NjWHao4sznCIQQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Io4x7Zt//g5f0KJG5qgKF9ZvASYzDQ1cC9Tn59M8S6Q=;
        b=q/2eIzxY8bfLE/eiPJrHWTA3yBn2JH/uTQBUSweufJV5Yr6SWIrusenim/lUNS4IFc
         4A/k5aM2sSPdwCoEnZX8luDM696TK5Njad4md2v39yojNZMmW722T+MTGX8ckzktYCjY
         107rtXDZQ3JFevL2gN2Q0+7HlXZXwt9X0a6qxUciyMamaFRQAKoEOUnKSa7PWYDulNlZ
         8cG9dZEBWXipNb2ZE/3Ke+p4yTH7cOpa+o8WcWCAdKQo3rFDB+0JzTzN1hrblG9sFxn6
         Cx34d6cFPUMU8TqCd4fEfhi6IBgP8HP2fBY0GaZLV1EhHfJ1biUF3gcuZt5ft2pAjCLz
         dKCQ==
X-Gm-Message-State: AOAM530MLxfaLi9AOh6bE0E4uZ5zPaRDHLui1gnwAhuDC4zh6gJMm/nw
	LCkQupy3fURQI9mpjxE1qg3XCa47CCyWXNv8VTiIWPqFz4bLn04FdNvfR9OdUl9loaZI5PtoYJT
	Ub8Pj0wT+sWLCOJx0QIwj5KMDuSh14YP2ES9a16zmx22q
X-Received: by 2002:ac8:5d06:: with SMTP id f6mr2544641qtx.83.1601478574552;
        Wed, 30 Sep 2020 08:09:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzgXB7kKUvcxUxpJXf6CaRi2975PsgB64gUTdKoTuf7M98Se+DM8LKbdf3d91/jybqOGHhXgMxVQmnvFsgg7U=
X-Received: by 2002:ac8:5d06:: with SMTP id f6mr2544615qtx.83.1601478574178;
 Wed, 30 Sep 2020 08:09:34 -0700 (PDT)
MIME-Version: 1.0
From: Hardik Vyas <hvyas@redhat.com>
Date: Wed, 30 Sep 2020 20:39:23 +0530
Message-ID: <CAOo2v=DZnn16vnvyX_ncb0H0gciYwxpV6DNFLN2s-VB1WLnyPA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hvyas@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000087a14b05b08949b7"
Subject: [oss-security] CVE-2020-10762 gluster-block: information disclosure through
 world-readable gluster-block log files

--00000000000087a14b05b08949b7
Content-Type: text/plain; charset="UTF-8"

Hello,

An information-disclosure flaw was found in the way that gluster-block
logs the output from gluster-block CLI operations. This includes recording
passwords to the cmd_history.log file which is world-readable. This flaw
allows local users to obtain sensitive information by reading the log file.
The highest threat from this vulnerability is to data confidentiality.

CVE-2020-10762 has been assigned for this flaw.

Upstream PR: https://github.com/gluster/gluster-block/pull/280
Release: https://github.com/gluster/gluster-block/releases/tag/v0.5.1

Credit: Prasanna Kumar Kalever (Red Hat)

Thanks,
-- 

Hardik Vyas / Red Hat Product Security

BD48 C633 DE34 733A BBC3  3B72 8A14 AEBB D68B 9381
secalert@redhat.com for urgent response
<https://www.redhat.com>

--00000000000087a14b05b08949b7--

