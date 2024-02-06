# Only-CF.sh

- Installation:

```curl -O https://gist.githubusercontent.com/dnscat/ae2ef5e6a1b68eb403ac50e9a2628042/raw/a3556f68bc6457315735b8e7f2ec8c59cecc9eee/only-cf.sh```

- Reset IPtables:

```iptables -F```
# WARNING: Do not execute this if you have other IP tables that could be stopped by this command. This could lead to a crash of the SSH connection!

- Start IPtable:

```sh only-cf.sh```
# WARNING: This command must be executed every time you restart your server.
```html
<div>
    <pre>
        <code id="myCode">
            function helloWorld() {
                console.log("Hello, World!");
            }
        </code>
    </pre>
    <button onclick="copyToClipboard()">Copy to Clipboard</button>
</div>

<script>
    function copyToClipboard() {
        const codeElement = document.getElementById('myCode');
        const textarea = document.createElement('textarea');
        textarea.value = codeElement.innerText;
        document.body.appendChild(textarea);
        textarea.select();
        document.execCommand('copy');
        document.body.removeChild(textarea);
    }
</script>
