Received: (qmail 8043 invoked by uid 550); 22 Sep 2022 18:49:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22519 invoked from network); 22 Sep 2022 17:51:23 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf0e3T79ggLUiOytGggbEQY5KXKpTs4h8gdAp8q1VIuNeaGRoeST
	dCxzwwb3zZDf7aiRmrzO2FtYgfR/iLoOaLsYCmU=
X-Google-Smtp-Source: AMsMyM6AuLD79fg6hoKn84GMVoQP7mv0A96b8TQCDANgySHYKVrz1LPf2MLAiA8F9JfpmXPeVuV6MBfs2Ss89ID0Ob4=
X-Received: by 2002:a63:2:0:b0:42f:6169:f396 with SMTP id 2-20020a630002000000b0042f6169f396mr3972650pga.249.1663869068973;
 Thu, 22 Sep 2022 10:51:08 -0700 (PDT)
MIME-Version: 1.0
From: Michael Marshall <mmarshall@apache.org>
Date: Thu, 22 Sep 2022 12:50:32 -0500
X-Gmail-Original-Message-ID: <CAB8KC3DCj9kaqZSmYR1fuZCTgkB-9Akw7KSSKbdLg8Bm_O20SQ@mail.gmail.com>
Message-ID: <CAB8KC3DCj9kaqZSmYR1fuZCTgkB-9Akw7KSSKbdLg8Bm_O20SQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-33682: Apache Pulsar: Disabled Hostname Verification makes
 Brokers, Proxies vulnerable to MITM attack

Severity: high

Description:

TLS hostname verification cannot be enabled in the Pulsar Broker's
Java Client, the Pulsar Broker's Java Admin Client, the Pulsar
WebSocket Proxy's Java Client, and the Pulsar Proxy's Admin Client
leaving intra-cluster connections and geo-replication connections
vulnerable to man in the middle attacks, which could leak credentials,
configuration data, message data, and any other data sent by these
clients. The vulnerability is for both the pulsar+ssl protocol and
HTTPS.

An attacker can only take advantage of this vulnerability by taking
control of a machine 'between' the client and the server. The attacker
must then actively manipulate traffic to perform the attack by
providing the client with a cryptographically valid certificate for an
unrelated host.

This issue affects Apache Pulsar Broker, Proxy, and WebSocket Proxy
versions 2.7.0 to 2.7.4; 2.8.0 to 2.8.3; 2.9.0 to 2.9.2; 2.10.0; 2.6.4
and earlier.

Mitigation:

Any users running affected versions of the Pulsar Broker, Pulsar
Proxy, or Pulsar WebSocket Proxy should rotate static authentication
data vulnerable to man in the middle attacks used by these
applications, including tokens and passwords.

To enable hostname verification, update the following configuration files.

In the Broker configuration (broker.conf, by default) and in the
WebSocket Proxy configuration (websocket.conf, by default), set:

brokerClient_tlsHostnameVerificationEnable=true

In Pulsar Helm chart deployments, the Broker and WebSocket Proxy
setting name should be prefixed with "PULSAR_PREFIX_".

In the Proxy configuration (proxy.conf, by default), set:

tlsHostnameVerificationEnabled=true

2.7 users should upgrade Pulsar Brokers, Proxies, and WebSocket
Proxies to 2.7.5, rotate vulnerable authentication data, including
tokens and passwords, and apply the above configuration.
2.8 users should upgrade Pulsar Brokers, Proxies, and WebSocket
Proxies to 2.8.4, rotate vulnerable authentication data, including
tokens and passwords, and apply the above configuration.
2.9 users should upgrade Pulsar Brokers, Proxies, and WebSocket
Proxies to 2.9.3, rotate vulnerable authentication data, including
tokens and passwords, and apply the above configuration.
2.10 users should upgrade Pulsar Brokers, Proxies, and WebSocket
Proxies to 2.10.1, rotate vulnerable authentication data, including
tokens and passwords, and apply the above configuration.
Any users running Pulsar Brokers, Proxies, and WebSocket Proxies for
2.6.4 and earlier should upgrade to one of the above patched versions,
rotate vulnerable authentication data, including tokens and passwords,
and apply the above configuration.

Credit:

This issue was discovered by Michael Marshall of DataStax.
