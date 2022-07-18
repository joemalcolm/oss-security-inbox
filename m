Received: (qmail 11980 invoked by uid 550); 18 Jul 2022 12:15:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21972 invoked from network); 18 Jul 2022 11:22:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Zhenxu Ke <kezhenxu94@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bc7463ea-bb83-722a-7bfe-9b8881f9ee19@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Jul 2022 11:22:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-36127: Apache SkyWalking NodeJS Agent: Service
 unavailability impact in NodeJS agent(version <= 0.5.0) 

Description:

The vulnerability will cause NodeJS services that has this agent installed =
to be unavailable if the OAP is unhealthy and NodeJS agent can't establish =
the connection.

