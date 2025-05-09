Received: (qmail 16128 invoked by uid 550); 9 May 2025 09:37:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16103 invoked from network); 9 May 2025 09:37:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=jBakJ1mNMp6f6vZ67YdP7dGUtOfYGk2cMaCEQtodu0M=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1746783433;
	x=1747431433; b=HpkUe2FlF9Rdm5Jxm0/Q8DXgV1ng6oYBrgJIPcj+2LVa4dRxAhfZtEj7q9/VK
	80gdye/D4cbT4bE2Zo14Id1nq0LoaACyi2fahHtRRiz/9DO7Lk2olzOLODykHW95rs+dlwRouo64q
	9GAJNh+FJ0JKGrIhI74uVqouBT3Zuk0/aRmKWBW+VO4ebqq4JvZ9vgE9NYWXhFu1HulUmjUSmRk1e
	ozcnV5cAVnay57/8xoJ/5QDmczVY70cUomgadcdJNv3yROAFvgNtu50kV+zyL1cCXMGaCHwpk0sBM
	YVcnK/DD89Kam2x/9AYRPOYNxhf8xJdLixtCdlR6DOiiAX4HLQ==;
Date: Fri, 9 May 2025 12:36:56 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <kqi2nuwafj3rm6e3xykryy5norff6q25qeoogw4ida32uveduo@t7loixt57w25>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20241002-60-525451
Subject: [oss-security] CVE-2025-1948 & CVE-2024-13009: DoS and infoleak in Jetty

The Jetty project [1] has announced two security issues classified as "high": a
memory exhaustion issue with crafted HTTP/2 requests (12.x series, fixed in
12.0.17) as CVE-2025-1948, and a cross-request data corruption issue with
potential information leakage when gzip compression is enabled (9.4.x, fixed in
9.4.57, security patch to an otherwise EoL release) as CVE-2024-13009.

CVE-2025-1948 details: <https://github.com/jetty/jetty.project/security/advisories/GHSA-889j-63jv-qhr8>

CVE-2024-13009 details: <https://github.com/jetty/jetty.project/security/advisories/GHSA-q4rv-gq96-w7c5>

[1] Description from project README: "Eclipse Jetty is a lightweight, highly
scalable, Java-based web server and Servlet engine. Jetty's goal is to support
web protocols (HTTP/1, HTTP/2, HTTP/3, WebSocket, etc.) in a high volume low
latency way that provides maximum performance while retaining the ease of use
and compatibility with years of Servlet development."
