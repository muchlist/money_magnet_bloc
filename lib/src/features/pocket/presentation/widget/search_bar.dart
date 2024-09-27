import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<CustomSearchBar> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColor.greyColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(CupertinoIcons.search),
              onPressed: () {
                // provider.setSearchDetail(
                //     search: _nameController.text);
                // FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
            Expanded(
              child: TextFormField(
                controller: _nameController,
                textInputAction: TextInputAction.done,
                minLines: 1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.greyColor,
                  enabledBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {
                      // provider.resetSearchDetail();
                      _nameController.clear();
                      FocusScope.of(context).requestFocus(
                        FocusNode(),
                      );
                    },
                    icon: const Icon(Icons.clear),
                  ),
                  border: InputBorder.none,
                ),
                onFieldSubmitted: (String text) => () {
                  FocusScope.of(context).requestFocus(
                    FocusNode(),
                  );
                },
              ),
            ),
            const SizedBox(
              width: 8,
            )
          ],
        ),
      ),
    );
  }
}
