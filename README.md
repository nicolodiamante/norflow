<p align="center"><a href="#"><img src="https://github.com/nicolodiamante/norflow/assets/48920263/3212cf5a-ec62-4b0e-bdbb-5015aa6fb6a6" draggable="false" ondragstart="return false;" alt="Norflow Title" title="Norflow" /></a></p>

[Apple shortcuts][apple-shortcuts] is indeed a powerful tool that enables users to simplify their daily tasks and complete them with ease. With just a tap or a voice command, you can perform a wide range of actions, such as sending messages, setting reminders, or playing your favourite music. Additionally, the Shortcuts app allows you to create personalized shortcuts with multiple steps, which can save you significant time and effort.

However, the app creates an empty folder on your iCloud Drive every time it's opened. While it's possible to store files in this folder, it's often left empty and can become a nuisance. Although deleting the folder manually is harmless, it can be time-consuming and bothersome. This is where a simple utility comes in handy. By automatically deleting the folder every time the Shortcuts app is opened, this utility can keep your iCloud Drive free of clutter.

<p align="center"><a href="#"><img src="https://github.com/nicolodiamante/norflow/assets/48920263/6211d6c3-ad58-4c5a-b8ae-7354fab08f76" draggable="false" ondragstart="return false;" alt="Shortcuts folder in Finder" title="Shortcuts folder in Finder" width="750px" /></a></p>

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
<br/><br/>

### How It Works

The agent is a program or service that is specifically designed to perform a particular task at regular intervals. In this case, the agent is responsible for running a script that checks for the presence of the Shortcuts folder in iCloud Drive every 300 seconds. This ensures that the folder is not present in iCloud Drive.

If the script detects the presence of the Shortcuts folder, it will then check to see if the folder is empty or not. This is an important step, as it ensures that no valuable data is accidentally deleted. If the folder is found to be empty, the script will then proceed to delete the folder, freeing up storage space and further organizing iCloud Drive.

This process is important because it helps to keep your iCloud Drive clean and organized, which can be a challenge with the amount of data that we accumulate and store on our devices. By automating this process with an agent and a script, you can ensure that your iCloud Drive remains organized and efficient, without having to manually check and delete unnecessary folders and files.

Overall, the agent and script combination provide an effective and efficient solution for managing your iCloud Drive, ensuring that it remains organized and free of unnecessary clutter, which in turn can help improve your productivity and workflow.<br/><br/>

## Notes

### Resources

- [Shortcuts User Guide][apple-guide]

### Contribution

Any suggestions or feedback you may have for improvement are welcome. If you encounter any issues or bugs, please report them to the [issues page][issues].<br/><br/>

<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/113406768-5a164900-93ac-11eb-94a7-09377a52bf53.png" draggable="false" ondragstart="return false;" /></a></p>

<p align="center"><a href="https://nicolodiamante.com" target="_blank"><img src="https://github.com/nicolodiamante/norflow/assets/48920263/b196b1d2-6863-4239-960b-7452614284c6" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante Portfolio" title="Nicol&#242; Diamante" width="11px" /></a></p>

<p align="center"><a href="https://github.com/nicolodiamante/norflow/blob/main/LICENSE.md" target="_blank"><img src="https://github.com/nicolodiamante/norflow/assets/48920263/01c675fb-9bfd-44b8-a5ef-82618e8644b6" draggable="false" ondragstart="return false;" alt="The MIT License" title="The MIT License (MIT)" width="90px" /></a></p>

<!-- Link labels: -->
[apple-shortcuts]: https://support.apple.com/en-gb/guide/shortcuts/welcome/ios
[apple-guide]: https://support.apple.com/en-gb/guide/shortcuts/apdf22b0444c/6.0/ios/16.0
[issues]: https://github.com/nicolodiamante/norflow/issues
