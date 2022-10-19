Received: (qmail 30187 invoked by uid 550); 19 Oct 2022 11:53:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31843 invoked from network); 19 Oct 2022 06:02:58 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf1hk/dEDSz3qi/+wPZJwdotcq/TvKPWABJ/mA9L/Ri7Jbrj3YRU
	AgrQTARbHOlkxb70O0A9vR6YJh3aT3NrCYZu67aQvg==
X-Google-Smtp-Source: AMsMyM69uyuDdGK4E/X8j37hXQeK6PtC+PPYlpqfqIMn+zvIBp/lqLvI9XHgjGVFzjcxAdRrQuRnKiNfiod0kIyY0WM=
X-Received: by 2002:a1f:2fce:0:b0:3ab:9b99:241d with SMTP id
 v197-20020a1f2fce000000b003ab9b99241dmr2987973vkv.26.1666159363920; Tue, 18
 Oct 2022 23:02:43 -0700 (PDT)
MIME-Version: 1.0
From: Dan Haywood <danhaywood@apache.org>
Date: Wed, 19 Oct 2022 07:02:33 +0100
X-Gmail-Original-Message-ID: <CALJOYLFzKmL_qChvRV8iAcQBVuixtXr-_=50mPJynpUE5qSsHA@mail.gmail.com>
Message-ID: <CALJOYLFzKmL_qChvRV8iAcQBVuixtXr-_=50mPJynpUE5qSsHA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-42466: Apache Isis: XSS vulnerability, eg for String properties.

Severity: important

Description:

Prior to 2.0.0-M9, it was possible for an end-user to set the value of
an editable string property of a domain object to a value that would
be rendered unchanged when the value was saved.  In particular, the
end-user could enter javascript or similar and this would be executed.

As of this release, the inputted strings are properly escaped when rendered.

Credit:

Apache Isis would like to thank Qing Xu for reporting this issue
