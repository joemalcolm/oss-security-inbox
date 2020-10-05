X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["543" "Monday" "5" "October" "2020" "15:02:33" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "15" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" "^Date:" nil nil "10" "2020100512:02:33" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "        gguninski@gm Oct  5   15/543   " thread-indent "\"[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25946 invoked by uid 550); 5 Oct 2020 12:34:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12251 invoked from network); 5 Oct 2020 12:02:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=BO5ibY05+MbfjUnWpuo5jYyzMgddJCXJupJyi7XkXTw=;
        b=NTpY63qg6qAy1jH7v+C0czuw6os6w7uW30kCYm0i7Ege1GGXKOBHWEdtMPSZYh0M9h
         v4iQ+hc191qeqOL9FgaJh34+rBMvqOkuZSRqwNDjFVgdWbqNhHzYf1GVvWMWP40gxUq3
         sijWGmpIbrDsO5Q+1/WlDnnu2WjrXXpRHNMuSJhvAgvScvgPGuU3CywzuCpXz/yW7nnG
         u47jaWS13anVcf9ee5j2rxuYd0GJjJVuhfNDOmnZWGsJBe5cZsYm1gD46m1F+daQ3gjo
         9eYIwkISLgFDxCqCwWRprCkXG4iuP5pWDSRQPVRd+ayF7KRnu6PJytqnVqoj0YIAaUjH
         CX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BO5ibY05+MbfjUnWpuo5jYyzMgddJCXJupJyi7XkXTw=;
        b=dEml6heT/nHLpQRqxkG86BaeythX28aieytV892TDKwZET0DwnTh2Xxws1FZOC0yUI
         DXMeDNPLvlLSdAETpsEpqUoOYlGJGcwv/nbup0JITquYgD9rBKhzeXDSN6U/iwhGlsee
         TG/xv7kXliVTNt0t2/rYF2R9jre0r7Gus5EvjItxUi9OeVIkGdtToAe4R8fWbatF87v5
         TzPkRn1Y0vAEEB4io6sa4ZUPqP0oG/SmjSXrHVig2ujSUAAme1Y7QheCsno2/wPAGyJS
         2w6O9BtmI/FymjYDwyFAlm3J/nekXsl+ZSUepTvEuKq70YiDgHR4T62IPC1J8/MVR+Cp
         CQqA==
X-Gm-Message-State: AOAM530Bf8N9GbhS/Hk9vPGetQSuSVXAtpIUNFJVrw9xknXr8yKy4kU4
	djWzFS6v23XQA6eFmN5vBaeWvukk4SWYtddXRY2P0u0iXTI=
X-Google-Smtp-Source: ABdhPJzXxVo+uR/QcdB031K3dGSXuHXOJhXUZyi4wMbJ0Go4ozB/uTkj13TA8tDUiwiSvoRcPUvEWaaDIcuZzg0/5Sk=
X-Received: by 2002:adf:ffc7:: with SMTP id x7mr17268549wrs.405.1601899365338;
 Mon, 05 Oct 2020 05:02:45 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 5 Oct 2020 15:02:33 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Disclaimer: I am not watching the security theatre closely,
so this is likely trivial.

Are there major security changes needed if
gnu/linux dominates the desktop and/or mobile phone
markets?

Remarks:
1. there was android malware on google play
2. ad-free and free as in beer android games are hard to find for us
3. we are pissed off by browsers accessing the microphone
or camera (seen in the wild)
4. reading $HOME might reveal more interesting stuff than
root reading /etc/ (on debian 10 /home/loser is 755 and the
default umask is 0022)
