import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({ Key? key }) : super(key: key);

  @override
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
     bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return   AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: _expanded ? MediaQuery.of(context).size.width - 20 : 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: Colors.white,
                  boxShadow: kElevationToShadow[6]),
              child: Row(
                children: [
                  Material(
                    type: MaterialType.transparency,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _expanded = !_expanded;
                            });
                          },
                          icon: Icon(_expanded?Icons.close:Icons.search),),
                    ),
                  ),
                  Expanded(child: Container(child: _expanded?const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none
                    ),
                  ):null,)),
                  
                ],
              ),
            );
  }
}