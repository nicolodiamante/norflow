<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/norflow/assets/48920263/d6bb011e-000e-4469-85ae-dd7a53c578e4" draggable="false" ondragstart="return false;" alt="norflow" title="norflow" />
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/6c2493b9-ccf0-45fe-b0b4-a645b488c0ca" draggable="false" ondragstart="return false; "alt="norflow" title="norflow" />
  </picture>
</p>

[Apple shortcuts][apple-shortcuts] is indeed a powerful tool that enables users to simplify their daily tasks and complete them with ease. With just a tap or a voice command, you can perform a wide range of actions, such as sending messages, setting reminders, or playing your favourite music. Additionally, the Shortcuts app allows you to create personalised shortcuts with multiple steps, which can save you significant time and effort.

However, the app creates an empty folder on your iCloud Drive every time it's opened. While it's possible to store files in this folder, it's often left empty and can become a nuisance. Although deleting the folder manually is harmless, it can be time-consuming and bothersome. This is where a simple utility comes in handy. By automatically deleting the folder every time the Shortcuts app is opened, this utility can keep your iCloud Drive free of clutter.

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/norflow/assets/48920263/342c2007-ad34-495d-ade4-aaa73948d41b" draggable="false" ondragstart="return false;" alt="norflow" title="norflow" />
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/651404d0-9a3b-4c69-8430-fe9cc03ef370" draggable="false" ondragstart="return false; "alt="Apple Shortcuts" title="Apple Shortcuts" width="750px" />
  </picture>
</p>

## Getting Started

### Installation

This will download the repository via curl:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/norflow/HEAD/bootstrap.sh)"
```

Alternatively, you can clone the repository manually:

```shell
git clone https://github.com/nicolodiamante/norflow.git
```

Once you have downloaded the repository, you can navigate into its directory in the terminal and paste the following code:

```shell
cd utils && source install.sh
```

The script will make a copy of the agent files into `~/Library/LaunchAgents`.
<br><br>

### How It Works

The agent is a program or service that is specifically designed to perform a particular task at regular intervals. In this case, the agent is responsible for running a script that checks for the presence of the Shortcuts folder in iCloud Drive every 300 seconds. This ensures that the folder is not present in iCloud Drive.

If the script detects the presence of the Shortcuts folder, it will then check to see if the folder is empty or not. This is an important step, as it ensures that no valuable data is accidentally deleted. If the folder is found to be empty, the script will then proceed to delete the folder, freeing up storage space and further organising iCloud Drive.

This process is important because it helps to keep your iCloud Drive clean and organized, which can be a challenge with the amount of data that we accumulate and store on our devices. By automating this process with an agent and a script, you can ensure that your iCloud Drive remains organized and efficient, without having to manually check and delete unnecessary folders and files.

Overall, the agent and script combination provide an effective and efficient solution for managing your iCloud Drive, ensuring that it remains organized and free of unnecessary clutter, which in turn can help improve your productivity and workflow.
<br><br>

## Notes

### Resources

- [Shortcuts User Guide][apple-guide]

### Contribution

Any suggestions or feedback you may have for improvement are welcome. If you encounter any issues or bugs, please report them to the [issues page][issues].
<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/f3dac045-2175-46d6-91bd-1ece65f7269e" draggable="false" ondragstart="return false;" /></>
  </picture>
</p>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/0047c3eb-f531-45f5-b705-fce0ed75e1de" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante" title="Nicol&#242; Diamante" width="17px" />
  </picture>
</p>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/norflow/assets/48920263/26fa2f3f-9bcc-4c1e-99dc-5c5ca8e3abe7" draggable="false" ondragstart="return false;" alt="MIT License" title="MIT License" />
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/55273eec-42e5-42d0-8efb-8c4f42025f3b" draggable="false" ondragstart="return false; "alt="MIT License" title="MIT License" width="95px" />
  </picture>
</p>

<!-- Link labels: -->
[apple-shortcuts]: https://support.apple.com/en-gb/guide/shortcuts/welcome/ios
[apple-guide]: https://support.apple.com/en-gb/guide/shortcuts/apdf22b0444c/6.0/ios/16.0
[issues]: https://github.com/nicolodiamante/norflow/issues
