Received: (qmail 7276 invoked by uid 550); 31 Mar 2024 21:09:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1735 invoked from network); 31 Mar 2024 21:09:16 -0000
Date: Sun, 31 Mar 2024 23:09:08 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240331210908.GA22607@openwall.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de> <20240330214617.fzevnlz4nrqvgbwp@sym.noone.org> <20240330220131.apxz26ieckj27vnd@awork3.anarazel.de>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
In-Reply-To: <20240330220131.apxz26ieckj27vnd@awork3.anarazel.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Mar 30, 2024 at 03:01:31PM -0700, Andres Freund wrote:
> On 2024-03-30 22:46:17 +0100, Axel Beckert wrote:
> > On Sat, Mar 30, 2024 at 12:48:50PM -0700, Andres Freund wrote:
> > > FWIW, RSA_public_decrypt is reachable, regardless of server configuration,
> > > when using certificate based authentication.
> >              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > 
> > Wait, do you really mean SSH keys verified by certificates issued by a
> > (usually internal, SSH-specific) certificate authority (CA) for a key?
> > 
> > See e.g.
> > https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Certificate-based_Authentication
> > what certificate-based authentication in SSH actually means.
> > 
> > From my experience certificate-based SSH authentication (i.e. those
> > algorithms with *-cert-* in their names) is rather rare, while simple
> > public key authentication (where you just put your according pubkey
> > into .ssh/authorized_keys) is very common.
> > 
> > Can you clarify if you really meant that solely certificate based
> > authentication (with certificates issued by a CA) triggers that code
> > path or if you actually meant all sorts of public key based
> > authentication in general?
> 
> I meant CA based auth - but note that, from what I can tell, you don't need to
> have it set up on the server side or anything. You might not even be able to
> disable it. If the client sends a signed key, the signature is loaded and
> verified before approved algorithms are checked.
> 
> This seems suboptimal regardless of the backdoor issue, so I opened an
> enhancement request for openssh: https://bugzilla.mindrot.org/show_bug.cgi?id=3675
> 
> I might be misreading the code around some of the details, but I did
> experimentally verify that an rsa signature is verified without CA auth being
> configured.

keeganryan on GitHub has posted a Python class that may help experiment
with the above, and with passing commands to the backdoor (but of course
we don't currently have the private key to sign them with):

https://gist.github.com/keeganryan/a6c22e1045e67c17e88a606dfdf95ae4

class ModifiedRSAClient:
    """ Connect to a SSH host using a modified RSA public key and signature.

    During public key authentication, an SSH client sends its public key to the SSH host.
    If this public key is a certificate, the signature of the certificate is verified by
    OpenSSH. This class allows for modification of the public key and signature in the
    certificate parsed by OpenSSH.
    """

Also attached in here (the first and only revision of the gist so far).

Alexander

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="modify_ssh_rsa_pubkey.py"

import paramiko
import os
import sys

class ModifiedRSAClient:
    """ Connect to a SSH host using a modified RSA public key and signature.

    During public key authentication, an SSH client sends its public key to the SSH host.
    If this public key is a certificate, the signature of the certificate is verified by
    OpenSSH. This class allows for modification of the public key and signature in the
    certificate parsed by OpenSSH.
    """
    
    def __init__(self,
                 host,
                 port,
                 username,
                 user_privkey_file="./ssh_user",
                 user_cert_file="./ssh_user-cert.pub",
                 ca_privkey_file="./ssh_user_ca"):
        self.host = host
        self.port = port
        self.username = username

        if not os.path.isfile(ca_privkey_file):
            print("CA private key does not exist. Run")
            print(f"ssh-keygen -t rsa -b 4096 -f {ca_privkey_file}")
            print(f"ssh-keygen -t rsa -b 4096 -f {user_privkey_file}")
            print(f"ssh-keygen -s {ca_privkey_file} -I ca {user_privkey_file}")
            sys.exit(-1)

        if not os.path.isfile(user_privkey_file):
            print("User private key does not exist. Run")
            print(f"ssh-keygen -t rsa -b 4096 -f {user_privkey_file}")
            print(f"ssh-keygen -s {ca_privkey_file} -I ca {user_privkey_file}")
            sys.exit(-1)

        if not os.path.isfile(user_cert_file):
            print("User certificate does not exist. Run")
            print(f"ssh-keygen -s {ca_privkey_file} -I ca {user_privkey_file}")
            sys.exit(-1)

        self.ca_key = paramiko.RSAKey.from_private_key_file(ca_privkey_file)
        self.user_key = paramiko.RSAKey.from_private_key_file(user_privkey_file)
        self.user_key.load_certificate(user_cert_file)

        self.n = self.ca_key.public_numbers.n
        self.e = self.ca_key.public_numbers.e
        self.modlen = (self.n.bit_length() + 7) // 8

        self.key_blob = self.user_key.public_blob.key_blob[:]
        self.n_offset, self.sig_offset = self.get_offsets(self.key_blob, self.n, self.e, self.modlen)

    def get_offsets(self, blob, n, e, modlen):
        # Blob contains a RSA public key and sigature. Find the offsets of
        # the bytes corresponding to n and to sig
        n_bytes = n.to_bytes(modlen, byteorder="big")
        n_offset = blob.index(n_bytes)

        for i in range(len(blob) - modlen, -1, -1):
            sig_bytes = blob[i:i+modlen]
            sig = int.from_bytes(sig_bytes, byteorder="big")
            msg = pow(sig, e, n)
            msg_bytes = msg.to_bytes(modlen, byteorder="big")
            # Does it have valid PKCS padding?
            if msg_bytes[:8] == b"\x00\x01\xff\xff\xff\xff\xff\xff":
                sig_offset = i
                break
        else:
            raise "Signature offset not found."
        
        return n_offset, sig_offset

    def query(self, n: bytes = None, sig: bytes = None):
        assert n is None or len(n) == self.modlen
        assert sig is None or len(sig) == self.modlen

        modlen = self.modlen
        key_blob = bytearray(self.key_blob)
        if n is not None:
            n_offset = self.n_offset
            key_blob[n_offset:n_offset+modlen] = n
        if sig is not None:
            sig_offset = self.sig_offset
            key_blob[sig_offset:sig_offset+modlen] = sig

        pkey = self.user_key
        pub_blob = paramiko.PublicBlob(
            self.user_key.public_blob.key_type,
            bytes(key_blob),
            self.user_key.public_blob.comment
        )
        pkey.public_blob = pub_blob

        client = paramiko.SSHClient()
        policy = paramiko.AutoAddPolicy()
        client.set_missing_host_key_policy(policy)
        try:
            client.connect(self.host, self.port, username=self.username, pkey=pkey, allow_agent=False)
        except paramiko.ssh_exception.AuthenticationException as e:
            client.close()

if __name__ == "__main__":
    client = ModifiedRSAClient("localhost", 22, "user")
    new_n = b"\xaa"*512
    new_sig=b"\xbb"*512
    client.query(n=new_n, sig=new_sig)
--EVF5PPMfhYS0aIcm--
