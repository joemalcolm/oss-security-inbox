Received: (qmail 20428 invoked by uid 550); 4 Apr 2024 15:25:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20383 invoked from network); 4 Apr 2024 15:25:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712244296; x=1712849096; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVUVqecq+CLYzk/1JSVNd6jOaUZw5B14AbKBjQNNmm4=;
        b=eDuh5vnJfu+ZAaHx1rqWb8WDDVnHmoWRJu+ILPE0wVS+f0nM90c7rd67I6mC70KRaM
         YmH39sIeGd2gdu2AcHNd3S+/sd19xEo01dqxPDqVLDmNpTuEOaytOXudefDJUxyjVTBC
         pTwHygLW9eLcViIqA4oHstmr9wVjEXsPSgQXnx6P/+t3IQfFO7xUZL2E7JvZjy/4jxHw
         uw8JK4GlyXO+mZX5+50O42+eTo4G/jAMQJomgiZW/P1CwHzBRUdUeTOW/vm/wvcExx9u
         MHuiihQ9nVBqisfb3Y4o0dvqj/Mr73GsVBRgbziBqYeaYAW0wSNPGggQ9h7DNNBvleGS
         Tv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712244296; x=1712849096;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VVUVqecq+CLYzk/1JSVNd6jOaUZw5B14AbKBjQNNmm4=;
        b=b52zEHaur+v72Nx23C/tSCvxzHT3CGedCuHDe2HbUtSuEILffHnWutRqM/OjKL/6DO
         Hxb0nQDSx58/tdMrXcJoVHTBDqQqo1mwMOi37x/+rFimJWzn2m/H/HJtqIknU9l2mXfv
         sYBlciub0NUkiXfpHPJ71Jm4N2aOsg/N6TQgY6k2mr343kE6QjPKFq8vwFkJKMsIxOKF
         YMl6taBWNpLGcBCq73lv9bx66nx3HYuLT2uhuWWx/EJF/WvFehiGEU7JhlcW/T28u85q
         pOdC8Wd4GZvIbFFvSB1JNuESSdCQQvaGGpJUJQOVOPOJo/KcsVnxifJIiAQlZLNZfCqA
         fs1A==
X-Gm-Message-State: AOJu0Yws1S6oIr8Bog6TsLjKgd3Gv/go7iE4XzUVFivPs/QGNJ7m5Bb8
	lLctipOfmzPYehehJnM92H8bjm6G3rNloBn/hEIQyrd9/NwD9L/Ump3pAhQm
X-Google-Smtp-Source: AGHT+IHZWx+viQhnB6OgTF4RGx7voy8NQBXhUf3tg8oPs4Eomg0NWhbPcrjeM9TLP81vlCz79AOp7w==
X-Received: by 2002:a05:6a00:4b46:b0:6eb:1d6:6c8c with SMTP id kr6-20020a056a004b4600b006eb01d66c8cmr2909524pfb.30.1712244295654;
        Thu, 04 Apr 2024 08:24:55 -0700 (PDT)
Message-ID: <f817b5f7-7ae6-7105-59c7-285df073dd23@gmail.com>
Date: Fri, 5 Apr 2024 02:24:54 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] YSA-2024-01: YubiKey Manager Privilege Escalation

I am not affiliated with Yubico, but I was recently made aware of the 
following which may be relevant to list members. The “YubiKey Manager 
GUI” software mentioned is the open source code at 
https://github.com/Yubico/yubikey-manager-qt.

https://www.yubico.com/support/security-advisories/ysa-2024-01/

> Published Date: 2024-04-04
> Tracking IDs: YSA-2024-01
> CVE: Link pending
> CVSS 3.1: 7.7
> Summary
> 
> A security issue has been identified in YubiKey Manager GUI which could lead to unexpected privilege escalation on Windows. If a user runs the YubiKey Manager GUI as Administrator, browser windows opened by YubiKey Manager GUI may be opened as Administrator which could be exploited by a local attacker to perform actions as Administrator. Under this circumstance, some browsers like Edge for example, have additional mitigations to prevent opening as Administrator.
> Affected software
> 
> The affected tool is YubiKey Manager GUI (commonly known as ykman-gui) with versions prior to 1.2.6. The issue impacts installations on Windows because Windows requires Administrative permissions to interact with FIDO authenticators. For other operating systems, YubiKey Manager GUI should not be run with elevated permissions.
> Not affected software
> 
> Installations of Yubikey Manager GUI on platforms other than Windows are not impacted by this issue.
> How to tell if you are affected
> 
> You are affected if you have YubiKey Manager GUI versions < 1.2.6 installed on a computer that is running Windows and is not using Edge as the default browser. You can check the version of YubiKey Manager GUI you have installed by clicking the “About” menu in the YubiKey Manager GUI.
> 
> Customer Actions
> 
> Yubico recommends that affected customers update to the latest version of YubiKey Manager available for download from our website<https://github.com/Yubico/yubikey-manager-qt> or directly from GitHub<https://github.com/Yubico/yubikey-manager-qt>.
> Alternate Mitigations
> 
>     Running YubiKey Manager GUI elevated is only required for using the FIDO features. In cases where users do not require FIDO features in YubiKey Manager GUI, it can run as an unelevated user to avoid this issue.
>     Users can set Microsoft Edge as their default browser which includes mitigations to avoid inheriting Administrative permissions when opened in this way.
> 
> Issue Details
> 
> Yubikey Manager GUI is a tool for managing the various features of a Yubikey, including FIDO, OTP or PIV. In certain situations, the tool spawns the system default browser as a child process. This action requires user interaction with the tool and is not automatically triggered.
> 
> On Windows systems, the ability to communicate with FIDO authenticators requires Administrator privileges. This is a limitation built into the operating system by Microsoft. Thus, in order to interact with the FIDO functionality of the Yubikey, the user must run Yubikey Manager GUI with Administrator privileges. Once YubiKey Manager GUI is run with Administrator privileges, any browser windows opened by YubiKey Manager GUI may also be elevated with Administrator privileges depending on the browser in use. This issue can be used by an attacker to escalate local attacks and increase the impact of browser based attacks.
> Severity
> 
> Yubico has rated this issue as High. It has a CVSS score of 7.7.

