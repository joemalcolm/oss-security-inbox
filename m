Received: (qmail 21913 invoked by uid 550); 21 Dec 2022 17:13:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21878 invoked from network); 21 Dec 2022 17:13:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UdeYIubiwGV2eGT6zxXjlVbpErxiQ7MWCX4wagFxSSw=;
        b=ITdTpsBPWNbuieM59Y+XFuWn22ADkXVq4aQ22z4gULjneBJyONXt/tlubLQSpDQqdu
         BLzz4amw1ze06BJAoUqiKr63H1JvqE44yVMC7rUmaL0rnRlFyAtWuU0XVD9kHfmpzqCQ
         kc2ENBxCbKLF53qBIZsAlbBGwssDhz/yw2MKYrH2mmZsZ6PDUCCiolQKkKl+aO0sKIJL
         RLJlRrZKcvmbH1aoQOLn1BipwtVYBVyvn+aP16WLJ0F7TxN1JX6IzJAaJHn4YYC8JjGV
         Sc+Nnh9WGW64sIlZckTMLO/ttsNakaV8Cabeu+7T/9m9PDqaYZxTZxbFMXIKcdKEmlK4
         TWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UdeYIubiwGV2eGT6zxXjlVbpErxiQ7MWCX4wagFxSSw=;
        b=uVpRNYyh7Sksgn3lRBRUHIfJHN7e2YshYJp2ienjUACO9yceFk1ppUnOxmafCrTdoa
         4fYhql0ipVF5ZcEZqkRNhQNsl0byj+wmikd6ULPmXeLP2ptGuPzMSMOWl3FpO2ChX9if
         SDTOiWRspeS2XyL1zcM7wK8GubduTXc1oOXu3sheHKQI2+OcbGpYeNEHJ8icQ06xw3Vi
         ScpYiqLsoQrrCxyBiVZu9dbK+8hOQKb3+XNaAxg8xu014F0CEOrzi2HrgcavEWRDBovo
         4TG6HKD4oyGuNRIs1x88VxgMl5FlELK9vgaZKXwBWSMWVEIFDjwvQ9Pv439Y1w60CEhy
         4JnQ==
X-Gm-Message-State: AFqh2kr1YPnelwxuYot3n8Ez8PsdJNZw88srHcfmWb95M8k+TaDp7pi6
	eI+FxAfrEmfD/kdmWjQO+QTAiBCY34ZhaKyBN3HXXtQLChit9tIe
X-Google-Smtp-Source: AMrXdXuvpxbC8Jb1UwIrnk6xaMQI53N+tqw4qjcrBnl0FTBnnODbDFppEsKXrExrxgri0l3asGg1IpGXcJmbyN0aSOs=
X-Received: by 2002:a05:6870:4256:b0:148:5f4a:7f19 with SMTP id
 v22-20020a056870425600b001485f4a7f19mr214666oac.120.1671642808681; Wed, 21
 Dec 2022 09:13:28 -0800 (PST)
MIME-Version: 1.0
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 21 Dec 2022 18:13:17 +0100
Message-ID: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [Linux] /proc/pid/stat parsing bugs

Hello,

This is not a single vulnerability, the list of affected software is
large, but it's not a security issue for all of it.

It occurred to me that most of the Linux procfs /proc/pid/stat and
/proc/pid/task/tid/stat parsing code out there is buggy. The fine
contains a set of numbers about the task:
https://man7.org/linux/man-pages/man5/proc.5.html

e.g. $ cat /proc/self/stat
1715376 (cat) R 1544883 1715376 1544883 34819 1715376 4194304 106 0 0
0 0 0 0 0 20 0 1 0 42505561 9207808 237 18446744073709551615
93955355631616 93955355651497 140737444557056 0 0 0 0 0 0 0 0 0 17 36
0 0 0 0 0 93955355667504 93955355669120 93955385581568 140737444559745
140737444559765 140737444559765 140737444564971 0

Most of the code splits it by space and takes an N-th field.
The problem is that the process name "(cat)" can contain spaces (and
brackets). Potentially some important software (containers/sandboxes)
can be tricked into getting wrong data, and I've seen cases close to
stack overflows (buffer for a fixed number of fields is allocated on
stack).

Some examples:
OpenJDK:
https://sourcegraph.com/github.com/openjdk/jdk/-/blob/src/jdk.management/unix/native/libmanagement_ext/OperatingSystemImpl.c?L133-139
https://sourcegraph.com/github.com/openjdk/jdk8u/-/blob/jdk/src/solaris/native/sun/management/OperatingSystemImpl.c?L223-229

Ansible:
https://sourcegraph.com/github.com/ansible/ansible/-/blob/lib/ansible/modules/yum.py?L507-510

Libuv:
https://sourcegraph.com/github.com/libuv/libuv/-/blob/src/unix/linux.c?L674-701

bdwgc:
https://sourcegraph.com/github.com/mono/linux-packaging-mono/-/blob/external/bdwgc/os_dep.c?L1138-1155

But really most of the code that does it:
https://sourcegraph.com/search?q=context:global+/%5C%22%5C/proc%5C/.*%5C/stat%5C%22/

The only way to parse it is to do strrchr(')') first (fortunately it
contains just one unescaped string).

Thanks
