X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1427" "Friday" "16" "April" "2021" "15:28:15" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "38" "[oss-security] QEMU: ESP security fixes" nil nil nil "4" nil nil (number mark "U       mcascell@red Apr 16   38/1427  " thread-indent "\"[oss-security] QEMU: ESP security fixes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] QEMU: ESP security fixes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1684 invoked by uid 550); 16 Apr 2021 13:29:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1305 invoked from network); 16 Apr 2021 13:28:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618579715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=2gFOa8RoIC7TjfEo8tWgHwUQlnWn8sZI+0DRUTefTOs=;
	b=DiKocJUGFA5Dz7S1syLTi0pLyaBkWgD5tjMRJo7bwPzmjqDgp8i+dp9tggsYBYj7N/btIT
	qd//HF38yglFUNaaGl1w3G6BMxnYHc7G5osIO2bB1r+WqhT5Em/zVSgAhDM4yg+xYshXEC
	e0mvRBNGpANIms7YgV23fylqjj0d694=
X-MC-Unique: n41TjE-9NBihoThG-7LQNQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=2gFOa8RoIC7TjfEo8tWgHwUQlnWn8sZI+0DRUTefTOs=;
        b=cNmpsXQvXGIBObLoGC/+UEwaR/2MLjYIJCpT13y7YFG9yKNvtok65JJEgDcPL0Krwm
         TfNdBAjNhh4SuYrDm5gZqIB3Almz4ylrriMyh11d1hOw/xFmo+3z6waYzb8mW0ELfNvH
         wEQPXGzUhzOz/ubq8cF+3USLYgL9hSXEuiqlO26sWIDEE2hQRCnlaZo00xwAOw6QnIRO
         YWc2h0WkdMX5p3UnTHoUNLmApJ8Wb8VMqbAjylvNuN7BHV7gRNl9sA8WftSTaOwikmk4
         9n+xYLgrAIBGJLSYsY/QA/Za5yKQ3CNnvMTXGktcRKeomMw6NeX74i/tHegiF2GeICUV
         LtYg==
X-Gm-Message-State: AOAM532AAama3JTiA620NQzKDEYV//jRrhZrqyu/5DCUINm2T3vx3Ec7
	xLmCNE5dKTRALwMI9y1i4lhljc8786Q7B0cl4kcOAL1phGThX+JrUPdFYw/TXreqqcFF8VutCbN
	uY0EM7vJoxEm4oQ8sy6EHNPiDpXD+WqRTsDat+X3AD1FF
X-Received: by 2002:a17:902:848a:b029:e9:914b:7421 with SMTP id c10-20020a170902848ab02900e9914b7421mr9577898plo.78.1618579706629;
        Fri, 16 Apr 2021 06:28:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzwm+lzQyWFppicLZIBzgp411sioSxxoILIWQJWa3ySGAWvz7DUj3YRtkmAJrgWL4CFV1H16K45G0xzhA29KHc=
X-Received: by 2002:a17:902:848a:b029:e9:914b:7421 with SMTP id
 c10-20020a170902848ab02900e9914b7421mr9577867plo.78.1618579706313; Fri, 16
 Apr 2021 06:28:26 -0700 (PDT)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Fri, 16 Apr 2021 15:28:15 +0200
Message-ID: <CAA8xKjVxi7xuZ-SFHGa63jFv9G2t4tEwVZ7qMaJP=ssynYGvKA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Cheolwoo Myung <cwmyung@snu.ac.kr>, Alexander Bulekov <alxndr@bu.edu>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] QEMU: ESP security fixes

Hello,

Several issues, including assertion failures, NULL pointer
dereferences, and memory corruption flaws were identified in the
am53c974 (ESP) device emulation of QEMU. A privileged guest user could
use these flaws to crash the QEMU process on the host, resulting in a
denial of service. Potential code execution with the privileges of the
QEMU process cannot be ruled out.

These issues are going to be fixed in the coming 6.0 release, see
https://wiki.qemu.org/Planning/6.0#Fixed_in_rc3.

Patch series:
https://lists.gnu.org/archive/html/qemu-devel/2021-04/msg01000.html

Upstream commits:
https://git.qemu.org/?p=qemu.git;a=commit;h=0db895361b
https://git.qemu.org/?p=qemu.git;a=commit;h=e392255766
https://git.qemu.org/?p=qemu.git;a=commit;h=e5455b8c1c
https://git.qemu.org/?p=qemu.git;a=commit;h=c5fef9112b
https://git.qemu.org/?p=qemu.git;a=commit;h=7b320a8e67
https://git.qemu.org/?p=qemu.git;a=commit;h=9954575173
https://git.qemu.org/?p=qemu.git;a=commit;h=fa7505c154
https://git.qemu.org/?p=qemu.git;a=commit;h=fbc6510e33
https://git.qemu.org/?p=qemu.git;a=commit;h=0ebb5fd805
https://git.qemu.org/?p=qemu.git;a=commit;h=324c880989
https://git.qemu.org/?p=qemu.git;a=commit;h=607206948c


Acknowledgements: Cheolwoo Myung and Alexander Bulekov (cc'd).
CVE-2020-35504, CVE-2020-35505, CVE-2020-35506 assigned by Red Hat, Inc.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

